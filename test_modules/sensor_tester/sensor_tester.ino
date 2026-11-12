/* AISC110C Interface Tester  (v2)
 * Power-on & configure sensor, exercise SPI, count frames.
 * Target: ESP32 (Arduino core 2.x/3.x). Adjust pins for your board.
 *
 * Changes from v1:
 *   - Hex/decimal argument parsing (strtoul base 0); bad input is rejected
 *   - Frame counting uses data_valid_out (one rising edge per frame) via GPIO
 *     interrupt, cross-checked against the sensor's own IMG_CNT register
 *   - Continuous-mode streaming with selectable interval; n_frames is honoured
 *   - IMG_CFG4 starts from the datasheet default (EN_ARRAY_TH = 28 us)
 *   - Bring-up defaults keep imager + analog array always on (see macros)
 *   - Product ID / revision check after BootDone
 *   - Charge-pump settle delay; CP disabled on shutdown
 *   - SPI default 10 MHz (datasheet max 15.625 MHz), adjustable with `spiclk`
 *   - 1.8 V monitor uses calibrated analogReadMilliVolts(), warns on change only
 *   - Single-burst SPI transactions; non-blocking serial line reader
 */
#include <SPI.h>
#include <esp_timer.h>
#include "aisc110c.h"

/* ---- Bring-up options ---- */
#define IMG_ALWAYS_ON    1   // IMG_CFG0.IMG_AON: keep PLL/imager support on (simplest bring-up)
#define ARRAY_ALWAYS_ON  1   // IMG_CFG4.ARRAY_AON: keep analog array on
#define CP_SETTLE_MS     20  // wait for -1.5 V charge pump to come up
#define V1V8_DIVIDER     1.0f // set if the 1.8 V rail reaches the ADC through a divider (Vrail = Vadc * this)

/* ---- Pin map (ESP32 DevKit) ---- */
const int EN          = 32;   // sensor ENABLE (active high)
const int V1V8_ADC    = 2;    // ADC monitor of 1.8 V rail
const int GPIO1       = 33;   // sensor GPIO1..4
const int GPIO2       = 25;
const int GPIO3       = 26;
const int GPIO4       = 27;

const int PIN_SPI_CLK  = 14;
const int PIN_SPI_SS   = 15;
const int PIN_SPI_MISO = 12;
const int PIN_SPI_MOSI = 13;

const uint32_t SPI_HZ_MAX     = 15625000UL;  // fast commands, Table 24
const uint32_t SPI_HZ_DEFAULT = 10000000UL;  // margin: ESP32 divides 80 MHz and may round up

/* Fast little-endian command bytes (datasheet §4.2.2, Table 24) */
const uint8_t CMD_READ  = 0x40;
const uint8_t CMD_WRITE = 0x24;

/* Minimum exposure-start interval per image size, us (Table 2) */
static const float MIN_INTERVAL_US[5] = {24.96f, 12.96f, 12.96f, 6.96f, 3.84f};

static uint32_t spi_hz         = SPI_HZ_DEFAULT;
static bool     sensor_running = false;
static bool     verbose        = true;    // register dump after start
static bool     monitor        = false;   // periodic 1.8 V print
static bool     rail_warned    = false;

/* ---- Forward decls ---- */
uint16_t spiRead(uint16_t addr);
void     spiWrite(uint16_t addr, uint16_t val);
void     HandleSerial(void);
void     ProcessLine(String line);
void     PrintHelp(void);
void     SensorStartup(void);
void     SensorShutdown(void);
void     SensorConfigureDefaults(void);
void     SensorDumpRegisters(void);
void     SensorStream(uint32_t n_frames, uint16_t interval_us);
bool     safetyChecks(void);

/* ---- Setup / loop ---- */
void setup() {
  Serial.begin(115200);
  delay(300);
  Serial.println("\n=== AISC110C Interface Tester v2 ===");

  pinMode(EN, OUTPUT);
  digitalWrite(EN, LOW);

  pinMode(PIN_SPI_SS, OUTPUT);
  digitalWrite(PIN_SPI_SS, HIGH);
  SPI.begin(PIN_SPI_CLK, PIN_SPI_MISO, PIN_SPI_MOSI, PIN_SPI_SS);

  // Sensor GPIOs may become outputs; keep ours as inputs
  for (int p : {GPIO1, GPIO2, GPIO3, GPIO4}) pinMode(p, INPUT);

  analogReadResolution(12);
  analogSetPinAttenuation(V1V8_ADC, ADC_11db);

  Serial.printf("SPI: CLK=%d MISO=%d MOSI=%d SS=%d @ %lu Hz\n",
                PIN_SPI_CLK, PIN_SPI_MISO, PIN_SPI_MOSI, PIN_SPI_SS,
                (unsigned long)spi_hz);
  Serial.println("Type '?' for commands.");
  safetyChecks();
}

void loop() {
  HandleSerial();
  static uint32_t last_check = 0;
  if (millis() - last_check > 2000) {
    last_check = millis();
    safetyChecks();
  }
}

/* ---- Safety ---- */
bool safetyChecks(void) {
  float mv = analogReadMilliVolts(V1V8_ADC) * V1V8_DIVIDER;
  if (monitor) Serial.printf("[safe] V1V8 ~%.0f mV\n", mv);
  bool ok = !sensor_running || (mv >= 1700.0f && mv <= 1900.0f);
  if (!ok && !rail_warned) {
    Serial.printf("[safe] WARNING: 1.8 V rail out of range (%.0f mV)\n", mv);
    rail_warned = true;
  } else if (ok) {
    rail_warned = false;
  }
  return ok;
}

/* ---- SPI primitives ----
 * Fast little-endian READ : cmd(1) + addr(2) + dummy(1) + data(2)  (MISO data in bytes 4..5)
 * Fast little-endian WRITE: cmd(1) + addr(2) + data(2)
 * Datasheet "little endian" sends D15..D8 first (Figs. 28, 30).
 */
uint16_t spiRead(uint16_t addr) {
  uint8_t tx[6] = {CMD_READ, (uint8_t)(addr >> 8), (uint8_t)(addr & 0xFF), 0, 0, 0};
  uint8_t rx[6] = {0};
  SPI.beginTransaction(SPISettings(spi_hz, MSBFIRST, SPI_MODE0));
  digitalWrite(PIN_SPI_SS, LOW);
  SPI.transferBytes(tx, rx, sizeof(tx));
  digitalWrite(PIN_SPI_SS, HIGH);
  SPI.endTransaction();
  return ((uint16_t)rx[4] << 8) | rx[5];
}

void spiWrite(uint16_t addr, uint16_t val) {
  uint8_t tx[5] = {CMD_WRITE, (uint8_t)(addr >> 8), (uint8_t)(addr & 0xFF),
                   (uint8_t)(val >> 8), (uint8_t)(val & 0xFF)};
  SPI.beginTransaction(SPISettings(spi_hz, MSBFIRST, SPI_MODE0));
  digitalWrite(PIN_SPI_SS, LOW);
  SPI.transferBytes(tx, nullptr, sizeof(tx));
  digitalWrite(PIN_SPI_SS, HIGH);
  SPI.endTransaction();
}

/* ---- Parsing / validation ---- */
// Accepts "0x1F" (hex), "31" (decimal). Note: a leading 0 ("010") is parsed as octal.
static bool parseU32(String s, uint32_t &out) {
  s.trim();
  if (s.length() == 0 || s[0] == '-') return false;
  char *end;
  unsigned long v = strtoul(s.c_str(), &end, 0);
  if (*end != '\0') return false;
  out = (uint32_t)v;
  return true;
}

static bool parseU16(const String &s, uint16_t &out) {
  uint32_t v;
  if (!parseU32(s, v) || v > 0xFFFF) return false;
  out = (uint16_t)v;
  return true;
}

static bool is_valid_reg(uint16_t a) {
  switch (a) {
    case AISC_REG_REVISION: case AISC_REG_PRODUCT_ID: case AISC_REG_STATUS:
    case AISC_REG_GPIO_CTRL: case AISC_REG_IMG_CTRL: case AISC_REG_IMG_CFG0:
    case AISC_REG_IMG_CFG1:  case AISC_REG_IMG_CFG2:  case AISC_REG_IMG_CFG3:
    case AISC_REG_LED_CTRL:  case AISC_REG_LED_PWM:   case AISC_REG_CP_CFG:
    case AISC_REG_IMG_CFG4:  case AISC_REG_IMG_CNT:   case AISC_REG_IMG_CNT_TH:
    case AISC_REG_INTR_EN:   case AISC_REG_INTR_ST:   return true;
    default: return false;
  }
}

/* ---- Startup / shutdown ---- */
void SensorStartup(void) {
  if (sensor_running) { Serial.println("[init] already running (use 'stop' first)"); return; }

  Serial.println("[init] Driving ENABLE high...");
  digitalWrite(EN, HIGH);
  delay(5); // regulators start in <200 us, allow POR + eFuse load

  uint32_t t0 = millis();
  uint16_t st = 0;
  Serial.println("[init] Waiting for BootDone...");
  while (true) {
    st = spiRead(AISC_REG_STATUS);
    if (st & STAT_BD_Msk) break;
    if (millis() - t0 > 2000) {
      Serial.printf("[init] TIMEOUT waiting for BootDone (STATUS=0x%04X)\n", st);
      digitalWrite(EN, LOW);
      return;
    }
    delay(2);
  }

  // A floating MISO reads 0xFFFF and would pass the BootDone test, so verify IDs.
  uint16_t pid = spiRead(AISC_REG_PRODUCT_ID);
  uint16_t rev = spiRead(AISC_REG_REVISION);
  Serial.printf("[init] PRODUCT_ID=0x%04X REVISION=0x%04X\n", pid, rev);
  if (pid != AISC_PRODUCT_ID_EXPECTED || (rev >> 8) != AISC_REV_MAJOR_EXPECTED) {
    Serial.println("[init] ID mismatch (expected PID 0x8020, REV major 0x0B). Check SPI wiring/mode/clock.");
    digitalWrite(EN, LOW);
    return;
  }

  Serial.println("[init] BootDone set, IDs OK. Loading defaults...");
  SensorConfigureDefaults();
  sensor_running = true;
  Serial.println("[init] Sensor ready.");
  if (verbose) SensorDumpRegisters();
}

void SensorShutdown(void) {
  Serial.println("[init] Shutting down...");
  if (sensor_running) {
    spiWrite(AISC_REG_IMG_CTRL, 0);     // stop exposure
    spiWrite(AISC_REG_IMG_CFG0, 0);     // clear EN_IMG / EXP_MODE
    spiWrite(AISC_REG_LED_CTRL, 0);
    spiWrite(AISC_REG_CP_CFG, 0);       // stop charge pump
  }
  digitalWrite(EN, LOW);
  sensor_running = false;
}

/* ---- Default configuration ---- */
void SensorConfigureDefaults(void) {
  // Charge pump first so -1.5 V has time to settle while we configure the rest
  spiWrite(AISC_REG_CP_CFG, CP_CFG_EN_CP_Msk | (0U << CP_CFG_CP_FREQ_DIV_Pos));

  spiWrite(AISC_REG_GPIO_CTRL, 0x0000);

  // Imager Config0: EN_IMG, single exposure, no ext trigger, EN_IMG_TH=0x0F,
  // full 80x120, IMG_AON per macro.
  uint16_t cfg0 = IMG_CFG0_EN_IMG_Msk;
  cfg0 |= (0x0FU << IMG_CFG0_EN_IMG_TH_Pos) & IMG_CFG0_EN_IMG_TH_Msk;
  cfg0 |= ((uint16_t)IMG_SIZE_80x120 << IMG_CFG0_IMG_SIZE_Pos) & IMG_CFG0_IMG_SIZE_Msk;
  if (IMG_ALWAYS_ON) cfg0 |= IMG_CFG0_IMG_AON_Msk;
  spiWrite(AISC_REG_IMG_CFG0, cfg0);

  // Imager Config1: prescale=1 (25 MHz/2), time=250 cycles -> 20 us exposure (reset 0x01FA)
  spiWrite(AISC_REG_IMG_CFG1,
           ((1U    << IMG_CFG1_EXP_PRSC_Pos) & IMG_CFG1_EXP_PRSC_Msk) |
           ((0xFAU << IMG_CFG1_EXP_TIME_Pos) & IMG_CFG1_EXP_TIME_Msk));

  // Imager Config2: 1 us tick (4 MHz / (3+1)), 100 us continuous interval.
  // (Reset value 0x300F = 15 us is shorter than the 24.96 us full-frame minimum.)
  spiWrite(AISC_REG_IMG_CFG2,
           (3U << IMG_CFG2_EXP_CONT_PSC_Pos) | (100U << IMG_CFG2_EXP_CONT_INT_Pos));

  // Imager Config3: full pixel accuracy (4x8-bit)
  spiWrite(AISC_REG_IMG_CFG3, 0x0000);

  // Imager Config4: EN_ARRAY, EN_ARRAY_TH = 0x1C (28 us, datasheet reset), ARRAY_AON per macro.
  uint16_t cfg4 = IMG_CFG4_EN_ARRAY_Msk |
                  ((0x1CU << IMG_CFG4_EN_ARRAY_TH_Pos) & IMG_CFG4_EN_ARRAY_TH_Msk);
  if (ARRAY_ALWAYS_ON) cfg4 |= IMG_CFG4_ARRAY_AON_Msk;
  spiWrite(AISC_REG_IMG_CFG4, cfg4);

  // LED: disabled; PWM at reset values (divider 7, duty 0x0A = 50%)
  spiWrite(AISC_REG_LED_CTRL, 0x0000);
  spiWrite(AISC_REG_LED_PWM,
           (7U << LED_PWM_FREQ_DIV_Pos) | (0x0AU << LED_PWM_DUTY_Pos));

  // Image counter / interrupts
  spiWrite(AISC_REG_IMG_CNT, 0);
  spiWrite(AISC_REG_IMG_CNT_TH, 0);
  spiWrite(AISC_REG_INTR_EN, 0);
  spiWrite(AISC_REG_INTR_ST, INTR_ST_IMG_DONE_Msk);   // W1C

  delay(CP_SETTLE_MS);   // let VN1V5 reach -1.5 V (scope it!)
}

/* ---- Register dump ---- */
void SensorDumpRegisters(void) {
  Serial.println("---- Register dump ----");
  Serial.printf("REVISION    0x%04X\n", spiRead(AISC_REG_REVISION));
  Serial.printf("PRODUCT_ID  0x%04X\n", spiRead(AISC_REG_PRODUCT_ID));
  Serial.printf("STATUS      0x%04X\n", spiRead(AISC_REG_STATUS));
  Serial.printf("GPIO_CTRL   0x%04X\n", spiRead(AISC_REG_GPIO_CTRL));
  Serial.printf("IMG_CTRL    0x%04X\n", spiRead(AISC_REG_IMG_CTRL));
  uint16_t c0 = spiRead(AISC_REG_IMG_CFG0);
  Serial.printf("IMG_CFG0    0x%04X\n", c0);
  uint16_t c1 = spiRead(AISC_REG_IMG_CFG1);
  Serial.printf("IMG_CFG1    0x%04X\n", c1);
  uint16_t c2 = spiRead(AISC_REG_IMG_CFG2);
  Serial.printf("IMG_CFG2    0x%04X\n", c2);
  Serial.printf("IMG_CFG3    0x%04X\n", spiRead(AISC_REG_IMG_CFG3));
  Serial.printf("LED_CTRL    0x%04X\n", spiRead(AISC_REG_LED_CTRL));
  Serial.printf("LED_PWM     0x%04X\n", spiRead(AISC_REG_LED_PWM));
  Serial.printf("CP_CFG      0x%04X\n", spiRead(AISC_REG_CP_CFG));
  Serial.printf("IMG_CFG4    0x%04X\n", spiRead(AISC_REG_IMG_CFG4));
  Serial.printf("IMG_CNT     0x%04X\n", spiRead(AISC_REG_IMG_CNT));
  Serial.printf("IMG_CNT_TH  0x%04X\n", spiRead(AISC_REG_IMG_CNT_TH));
  Serial.printf("INTR_EN     0x%04X\n", spiRead(AISC_REG_INTR_EN));
  Serial.printf("INTR_ST     0x%04X\n", spiRead(AISC_REG_INTR_ST));

  // Decoded summary
  float t_cyc  = ((c1 & IMG_CFG1_EXP_PRSC_Msk) >> IMG_CFG1_EXP_PRSC_Pos) + 1.0f;
  t_cyc /= 25.0f;                                                   // us per prescaled cycle (25 MHz)
  float exp_us = ((c1 & IMG_CFG1_EXP_OFF_Msk) >> IMG_CFG1_EXP_OFF_Pos) * (t_cyc / 4.0f) +
                 ((c1 & IMG_CFG1_EXP_TIME_Msk) >> IMG_CFG1_EXP_TIME_Pos) * t_cyc;
  float int_us = ((c2 & IMG_CFG2_EXP_CONT_INT_Msk) >> IMG_CFG2_EXP_CONT_INT_Pos) *
                 (((c2 & IMG_CFG2_EXP_CONT_PSC_Msk) >> IMG_CFG2_EXP_CONT_PSC_Pos) + 1.0f) / 4.0f;
  Serial.printf("[decoded] exposure=%.2f us, continuous interval=%.2f us, size code=%u\n",
                exp_us, int_us, (unsigned)((c0 & IMG_CFG0_IMG_SIZE_Msk) >> IMG_CFG0_IMG_SIZE_Pos));
  Serial.println("-----------------------");
}

/* ---- Frame streaming ----
 * Continuous exposure mode. Frames are counted two independent ways:
 *   1. data_valid_out on sensor GPIO1 -> ESP32 GPIO1 rising edges (one per frame; high for
 *      the whole ~24 us transfer)
 *   2. the sensor's own IMG_CNT register
 * Use intervals >= ~100 us: at 40 kfps the GPIO interrupt can't keep up (use PCNT for that),
 * but IMG_CNT stays valid at any rate.
 */
static volatile uint32_t dv_count = 0;
static volatile int64_t  dv_first = 0, dv_last = 0;

void IRAM_ATTR onDataValid() {
  int64_t t = esp_timer_get_time();
  if (dv_count == 0) dv_first = t;
  dv_last = t;
  dv_count = dv_count + 1;
}

void SensorStream(uint32_t n_frames, uint16_t interval_us) {
  if (n_frames == 0) n_frames = 1;
  if (interval_us < 1) interval_us = 1;
  if (interval_us > 4095) interval_us = 4095;   // 12-bit field at 1 us tick

  uint16_t cfg0_old = spiRead(AISC_REG_IMG_CFG0);
  uint16_t cfg2_old = spiRead(AISC_REG_IMG_CFG2);
  uint8_t  sz = (cfg0_old & IMG_CFG0_IMG_SIZE_Msk) >> IMG_CFG0_IMG_SIZE_Pos;
  if (sz > 4) sz = 0;                           // reserved codes default to full image

  if (interval_us < MIN_INTERVAL_US[sz])
    Serial.printf("[stream] WARNING: interval %u us < %.2f us minimum for this image size\n",
                  interval_us, MIN_INTERVAL_US[sz]);
  if (interval_us < 100)
    Serial.println("[stream] NOTE: GPIO interrupt may undercount at this rate; trust IMG_CNT");

  Serial.printf("[stream] %lu frames, interval %u us...\n", (unsigned long)n_frames, interval_us);

  // data_valid_out on sensor GPIO1
  spiWrite(AISC_REG_GPIO_CTRL, (uint16_t)(GPIO_FUNC_DATA_VALID << GPIO_CTRL_GPIO1_Pos));
  spiWrite(AISC_REG_IMG_CFG2,
           (3U << IMG_CFG2_EXP_CONT_PSC_Pos) | (interval_us & IMG_CFG2_EXP_CONT_INT_Msk));
  spiWrite(AISC_REG_IMG_CFG0, cfg0_old | IMG_CFG0_EXP_MODE_Msk | IMG_CFG0_EN_IMG_Msk);
  spiWrite(AISC_REG_IMG_CNT_TH, 0xFFFF);        // let the counter run freely
  spiWrite(AISC_REG_IMG_CNT, 0);

  dv_count = 0; dv_first = 0; dv_last = 0;
  attachInterrupt(digitalPinToInterrupt(GPIO1), onDataValid, RISING);

  spiWrite(AISC_REG_IMG_CTRL, 0);                       // make sure we get a clean 0->1
  int64_t t0 = esp_timer_get_time();
  spiWrite(AISC_REG_IMG_CTRL, IMG_CTRL_START_Msk);      // continuous: stays 1 until we clear it

  int64_t timeout_us = (int64_t)n_frames * interval_us + 1000000LL;
  while (dv_count < n_frames && (esp_timer_get_time() - t0) < timeout_us) { /* spin */ }

  spiWrite(AISC_REG_IMG_CTRL, 0);                       // hardware stops after current cycle
  delayMicroseconds(2UL * interval_us + 100);           // let the last frame finish
  detachInterrupt(digitalPinToInterrupt(GPIO1));

  uint32_t edges = dv_count;
  uint16_t cnt   = spiRead(AISC_REG_IMG_CNT);
  float rate     = (edges > 1) ? (edges - 1) * 1e6f / (float)(dv_last - dv_first) : 0.0f;

  Serial.printf("[stream] data_valid edges=%lu  IMG_CNT=%u\n", (unsigned long)edges, cnt);
  Serial.printf("[stream] measured %.0f fps, expected ~%.0f fps\n", rate, 1e6f / interval_us);

  if (edges == 0 && cnt == 0)
    Serial.println("[stream] FAIL: no frames. Check charge pump (VN1V5), EN_ARRAY/EN_IMG, START write.");
  else if (edges == 0)
    Serial.println("[stream] FAIL: sensor is counting frames but no data_valid seen. Check GPIO mapping/wiring.");
  else if (cnt == 0)
    Serial.println("[stream] WARN: data_valid seen but IMG_CNT=0 (unexpected).");
  else if ((int)edges - (int)cnt >= -1 && (int)edges - (int)cnt <= 1)
    Serial.println("[stream] PASS: GPIO count matches IMG_CNT.");
  else
    Serial.println("[stream] MISMATCH: GPIO count and IMG_CNT differ (ISR overrun? lower the rate).");

  // Restore
  spiWrite(AISC_REG_IMG_CFG0, cfg0_old);
  spiWrite(AISC_REG_IMG_CFG2, cfg2_old);
  spiWrite(AISC_REG_GPIO_CTRL, 0);
}

/* ---- Serial command handler ---- */
static String rxline;

void HandleSerial(void) {
  while (Serial.available()) {
    char c = (char)Serial.read();
    if (c == '\r') continue;
    if (c == '\n') {
      String l = rxline;
      rxline = "";
      ProcessLine(l);
    } else if (rxline.length() < 80) {
      rxline += c;
    }
  }
}

static String nextToken(String &s) {
  s.trim();
  int i = s.indexOf(' ');
  String t = (i < 0) ? s : s.substring(0, i);
  s = (i < 0) ? String("") : s.substring(i + 1);
  s.trim();
  return t;
}

void ProcessLine(String line) {
  line.trim();
  if (line.length() == 0) return;
  String cmd = nextToken(line);
  String a1  = nextToken(line);
  String a2  = nextToken(line);

  if (cmd == "?") {
    PrintHelp();
  } else if (cmd == "start") {
    SensorStartup();
  } else if (cmd == "stop") {
    SensorShutdown();
  } else if (cmd == "read") {
    uint16_t addr;
    if (!parseU16(a1, addr) || !is_valid_reg(addr)) { Serial.println("read: bad address"); return; }
    Serial.printf("0x%04X = 0x%04X\n", addr, spiRead(addr));
  } else if (cmd == "write") {
    uint16_t addr, val;
    if (a1.length() == 0 || a2.length() == 0) { Serial.println("write: usage  write <addr> <val>"); return; }
    if (!parseU16(a1, addr) || !is_valid_reg(addr) || !parseU16(a2, val)) {
      Serial.println("write: bad addr/val"); return;
    }
    spiWrite(addr, val);
    Serial.printf("wrote 0x%04X = 0x%04X (readback 0x%04X)\n", addr, val, spiRead(addr));
  } else if (cmd == "dump") {
    if (!sensor_running) { Serial.println("sensor not running"); return; }
    SensorDumpRegisters();
  } else if (cmd == "stream") {
    if (!sensor_running) { Serial.println("start sensor first"); return; }
    uint32_t n = 1, iv = 1000;
    if (a1.length() && !parseU32(a1, n))  { Serial.println("stream: bad frame count"); return; }
    if (a2.length() && !parseU32(a2, iv)) { Serial.println("stream: bad interval"); return; }
    SensorStream(n, (uint16_t)min<uint32_t>(iv, 4095));
  } else if (cmd == "spiclk") {
    uint32_t hz;
    if (!parseU32(a1, hz) || hz < 100000UL || hz > SPI_HZ_MAX) {
      Serial.printf("spiclk: usage  spiclk <100000..%lu>\n", (unsigned long)SPI_HZ_MAX); return;
    }
    spi_hz = hz;
    Serial.printf("SPI clock = %lu Hz\n", (unsigned long)spi_hz);
  } else if (cmd == "verbose") {
    verbose = !verbose;
    Serial.printf("verbose=%d (register dump after start)\n", verbose);
  } else if (cmd == "monitor") {
    monitor = !monitor;
    Serial.printf("monitor=%d (periodic 1.8 V print)\n", monitor);
  } else {
    Serial.printf("unknown cmd '%s' (try '?')\n", cmd.c_str());
  }
}

void PrintHelp(void) {
  Serial.println("--- AISC110C Sensor Tester v2 ---");
  Serial.println(" ?                      : this help");
  Serial.println(" start                  : power on + boot + ID check + default config");
  Serial.println(" stop                   : stop exposure + shut down");
  Serial.println(" read  <addr>           : read 16-bit register (0x.. hex or decimal)");
  Serial.println(" write <addr> <v>       : write register, prints readback");
  Serial.println(" dump                   : dump all registers + decoded timing");
  Serial.println(" stream [n] [interval]  : n frames, interval in us (default 1 / 1000)");
  Serial.println(" spiclk <hz>            : set SPI clock (max 15625000)");
  Serial.println(" verbose                : toggle register dump after start");
  Serial.println(" monitor                : toggle periodic 1.8 V print");
  Serial.println("---------------------------------");
}
