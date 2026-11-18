/* AISC110C Interface Tester
 * Power-on & configure sensor, stream pixel data, exercise SPI.
 * Target: ESP32 (matches original pin map). Adjust pins for your board.
 */
#include <SPI.h>
#include "aisc110c.h"

/* ---- Pin map (ESP32 DevKit) ---- */
const int EN     = 32;   // sensor ENABLE (active high)
const int V1V8   = 2;    // ADC monitor of 1.8 V rail
const int GPIO1  = 33;   // sensor GPIO1..4
const int GPIO2  = 25;
const int GPIO3  = 26;
const int GPIO4  = 27;

const int PIN_SPI_CLK  = 14;
const int PIN_SPI_SS   = 15;
const int PIN_SPI_MISO = 12;
const int PIN_SPI_MOSI = 13;

const uint32_t SPI_CLK_MAX = 15625000UL; // 15.625 MHz max for fast cmds

/* Fast little-endian command bytes (datasheet §4.2.2) */
const uint8_t CMD_READ  = 0x40;
const uint8_t CMD_WRITE = 0x24;

static bool sensor_running = false;
static bool verbose        = true;

/* ---- Forward decls ---- */
uint16_t spiRead(uint16_t addr);
void     spiWrite(uint16_t addr, uint16_t val);
void     HandleSerial(void);
void     PrintHelp(void);
void     SensorStartup(void);
void     SensorShutdown(void);
void     SensorConfigureDefaults(void);
void     SensorDumpRegisters(void);
void     SensorStream(uint32_t n_frames);
bool     safetyChecks(void);
uint16_t validateArgAddr(const String &arg);

/* ---- Setup / loop ---- */
void setup() {
  Serial.begin(115200);
  delay(300);
  Serial.println("\n=== AISC110C Interface Tester ===");

  pinMode(EN, OUTPUT);
  digitalWrite(EN, LOW);

  pinMode(PIN_SPI_SS, OUTPUT);
  digitalWrite(PIN_SPI_SS, HIGH);
  SPI.begin(PIN_SPI_CLK, PIN_SPI_MISO, PIN_SPI_MOSI, PIN_SPI_SS);

  // Configure the sensor GPIO pins as inputs (we may map them to functions)
  for (int p : {GPIO1, GPIO2, GPIO3, GPIO4}) pinMode(p, INPUT);

  Serial.printf("SPI: CLK=%d MISO=%d MOSI=%d SS=%d\n",
                PIN_SPI_CLK, PIN_SPI_MISO, PIN_SPI_MOSI, PIN_SPI_SS);
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
  int raw = analogRead(V1V8);
  // ESP32 ADC: 12-bit, ~3.3 V full scale, 11 dB atten.
  float v = raw * (3.3f / 4095.0f);
  if (verbose) Serial.printf("[safe] V1V8 ADC=%d (~%.2f V)\n", raw, v);
  if (sensor_running && (v < 1.70f || v > 1.90f)) {
    Serial.println("[safe] WARNING: 1.8 V rail out of spec!");
    return false;
  }
  return true;
}

/* ---- SPI primitives ----
 * Fast little-endian READ: cmd(1) + addr(2) + dummy(1) + data(2)
 * Fast little-endian WRITE: cmd(1) + addr(2) + data(2)
 * Note: fast READ discards the first data byte (datasheet §4.2.2).
 */
uint16_t spiRead(uint16_t addr) {
  SPI.beginTransaction(SPISettings(SPI_CLK_MAX, MSBFIRST, SPI_MODE0));
  digitalWrite(PIN_SPI_SS, LOW);
  SPI.transfer(CMD_READ);
  SPI.transfer16(addr);
  SPI.transfer(0x00);            // dummy byte (fast READ only)
  uint8_t hi = SPI.transfer(0x00);
  uint8_t lo = SPI.transfer(0x00);
  digitalWrite(PIN_SPI_SS, HIGH);
  SPI.endTransaction();
  return (uint16_t)lo | ((uint16_t)hi << 8);  // little endian
}

void spiWrite(uint16_t addr, uint16_t val) {
  SPI.beginTransaction(SPISettings(SPI_CLK_MAX, MSBFIRST, SPI_MODE0));
  digitalWrite(PIN_SPI_SS, LOW);
  SPI.transfer(CMD_WRITE);
  SPI.transfer16(addr);
  SPI.transfer((uint8_t)(val >> 8));   // high data
  SPI.transfer((uint8_t)(val & 0xFF)); // low data
  digitalWrite(PIN_SPI_SS, HIGH);
  SPI.endTransaction();
}

/* ---- Address validation ---- */
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

uint16_t validateArgAddr(const String &arg) {
  long v = arg.toInt();
  if (v < 0 || v > 0xFFFF) return 0xFFFF;
  return (uint16_t)v;
}

/* ---- Startup / shutdown ---- */
void SensorStartup(void) {
  Serial.println("[init] Driving ENABLE high...");
  digitalWrite(EN, HIGH);
  delay(5); // allow POR

  uint32_t t0 = millis();
  Serial.println("[init] Attempting to Read Status register for BootDone");
  while (!(spiRead(AISC_REG_STATUS) & STAT_BD_Msk)) {
    //Serial.println("Attempted SPI Read - No BootDone");
    //Serial.printf("[init] - PID Register: %x\n", spiRead(AISC_REG_PRODUCT_ID));
    if (millis() - t0 > 2000) {
      Serial.println("[init] TIMEOUT waiting for BootDone");
      digitalWrite(EN, LOW);
      return;
    }
    delay(2);
  }
  Serial.println("[init] BootDone set. Loading defaults...");
  SensorConfigureDefaults();
  sensor_running = true;
  Serial.println("[init] Sensor ready.");
  if (verbose) SensorDumpRegisters();
}

void SensorShutdown(void) {
  Serial.println("[init] Shutting down...");
  // Stop exposure if running
  spiWrite(AISC_REG_IMG_CTRL, 0);
  // Clear enable bits
  spiWrite(AISC_REG_IMG_CFG0, 0);
  spiWrite(AISC_REG_LED_CTRL, 0);
  digitalWrite(EN, LOW);
  sensor_running = false;
}

/* ---- Default configuration ---- */
void SensorConfigureDefaults(void) {
  // Revision / product ID / status are read-only.
  spiWrite(AISC_REG_GPIO_CTRL, 0x0000);        // all GPIOs default

  // Imager Config0: enable imager, single exposure, internal trigger off,
  // full 80x120 image, IMG always-on off, EN_IMG_TH = 0x0F (15 prescaled cycles).
  uint16_t cfg0 = 0;
  cfg0 |= (1U << IMG_CFG0_EN_IMG_Pos);
  cfg0 |= (0U << IMG_CFG0_EXP_MODE_Pos);
  cfg0 |= (0U << IMG_CFG0_EXT_TRIG_Pos);
  cfg0 |= ((0x0FU << IMG_CFG0_EN_IMG_TH_Pos) & IMG_CFG0_EN_IMG_TH_Msk);
  cfg0 |= ((uint16_t)IMG_SIZE_80x120 << IMG_CFG0_IMG_SIZE_Pos);
  cfg0 |= (0U << IMG_CFG0_IMG_AON_Pos);
  spiWrite(AISC_REG_IMG_CFG0, cfg0);

  // Imager Config1: exposure ~ default reset value 0x1FA -> 250 prescaled cycles
  // (see datasheet formula). Keep reset.
  spiWrite(AISC_REG_IMG_CFG1, 0x01FA);

  // Imager Config2: continuous interval reset 0x300F
  spiWrite(AISC_REG_IMG_CFG2, 0x300F);

  // Imager Config3: full pixel accuracy, 4x8-bit
  spiWrite(AISC_REG_IMG_CFG3, 0x0000);

  // Imager Config4: enable analog array, automatic power (ARRAY_AON=0),
  // EN_ARRAY_TH reset 0x01 (1 us) -> field is bits 8:2, so value = 1<<2
  spiWrite(AISC_REG_IMG_CFG4, 0x0005);

  // LED: disabled for now
  spiWrite(AISC_REG_LED_CTRL, 0x0000);
  spiWrite(AISC_REG_LED_PWM,  0x1C0A);

  // Charge pump: enable, default divider
  spiWrite(AISC_REG_CP_CFG, CP_CFG_EN_CP_Msk | (0U << CP_CFG_CP_FREQ_DIV_Pos));

  // Interrupts off
  spiWrite(AISC_REG_INTR_EN, 0);
  spiWrite(AISC_REG_INTR_ST, INTR_ST_IMG_DONE_Msk); // clear if set (W1C)
}

/* ---- Register dump ---- */
void SensorDumpRegisters(void) {
  Serial.println("---- Register dump ----");
  Serial.printf("REVISION    0x%04X\n", spiRead(AISC_REG_REVISION));
  Serial.printf("PRODUCT_ID  0x%04X\n", spiRead(AISC_REG_PRODUCT_ID));
  Serial.printf("STATUS      0x%04X\n", spiRead(AISC_REG_STATUS));
  Serial.printf("GPIO_CTRL   0x%04X\n", spiRead(AISC_REG_GPIO_CTRL));
  Serial.printf("IMG_CTRL    0x%04X\n", spiRead(AISC_REG_IMG_CTRL));
  Serial.printf("IMG_CFG0    0x%04X\n", spiRead(AISC_REG_IMG_CFG0));
  Serial.printf("IMG_CFG1    0x%04X\n", spiRead(AISC_REG_IMG_CFG1));
  Serial.printf("IMG_CFG2    0x%04X\n", spiRead(AISC_REG_IMG_CFG2));
  Serial.printf("IMG_CFG3    0x%04X\n", spiRead(AISC_REG_IMG_CFG3));
  Serial.printf("LED_CTRL    0x%04X\n", spiRead(AISC_REG_LED_CTRL));
  Serial.printf("LED_PWM     0x%04X\n", spiRead(AISC_REG_LED_PWM));
  Serial.printf("CP_CFG      0x%04X\n", spiRead(AISC_REG_CP_CFG));
  Serial.printf("IMG_CFG4    0x%04X\n", spiRead(AISC_REG_IMG_CFG4));
  Serial.printf("IMG_CNT     0x%04X\n", spiRead(AISC_REG_IMG_CNT));
  Serial.printf("IMG_CNT_TH  0x%04X\n", spiRead(AISC_REG_IMG_CNT_TH));
  Serial.printf("INTR_EN     0x%04X\n", spiRead(AISC_REG_INTR_EN));
  Serial.printf("INTR_ST     0x%04X\n", spiRead(AISC_REG_INTR_ST));
  Serial.println("-----------------------");
}

/* ---- Frame streaming (bit-banged capture placeholder) ----
 * The parallel outputs OUT1..OUT4, CLK_IO and DATA_VAL are on the
 * sensor's high-speed bus. On an ESP32 you can't reliably capture
 * 100 MHz DDR-ish data in software, but you can:
 *   - map GPIO1 to framesync_out and count pulses, or
 *   - map GPIO1 to data_valid_out and count valid windows.
 * We do the latter for a rough frame-rate estimate.
 */
void SensorStream(uint32_t n_frames) {
  Serial.printf("[stream] Starting %lu frames...\n", (unsigned long)n_frames);

  // Map GPIO1 to data_valid_out and GPIO2 to framesync_out so we can
  // observe activity without touching the high-speed bus.
  uint16_t gpio = 0;
  gpio |= (GPIO_FUNC_DATA_VALID << GPIO_CTRL_GPIO1_Pos);
  gpio |= (GPIO_FUNC_FRAMESYNC   << GPIO_CTRL_GPIO2_Pos);
  spiWrite(AISC_REG_GPIO_CTRL, gpio);

  // Single exposure, internal trigger
  spiWrite(AISC_REG_IMG_CFG0,
           spiRead(AISC_REG_IMG_CFG0) | IMG_CFG0_EN_IMG_Msk);

  uint32_t frames_seen = 0;
  uint32_t t_start = micros();

  // Pulse START for single exposure
  spiWrite(AISC_REG_IMG_CTRL, IMG_CTRL_START_Msk);
  spiWrite(AISC_REG_IMG_CTRL, 0);

  uint32_t last = millis();
  while (frames_seen < n_frames && (millis() - last < 2000)) {
    // Framesync produces 2 preamble pulses then 1 pulse per line.
    // A rising edge on GPIO2 = start of a line. Count valid-line bursts.
    static int prev = 0;
    int now = digitalRead(GPIO2);
    if (!prev && now) {
      frames_seen++;
      last = millis();
    }
    prev = now;
  }

  uint32_t elapsed_us = micros() - t_start;
  Serial.printf("[stream] %lu lines in %lu us (%.1f lines/s)\n",
                (unsigned long)frames_seen, (unsigned long)elapsed_us,
                frames_seen * 1e6f / elapsed_us);

  // Restore GPIO mapping
  spiWrite(AISC_REG_GPIO_CTRL, 0);
}

/* ---- Serial command handler ---- */
void HandleSerial(void) {
  if (!Serial.available()) return;
  String line = Serial.readStringUntil('\n');
  line.trim();
  if (line.length() == 0) return;

  int sep = line.indexOf(' ');
  String cmd = (sep == -1) ? line : line.substring(0, sep);
  String arg = (sep == -1) ? ""   : line.substring(sep + 1);

  if (cmd == "?") {
    PrintHelp();
  } else if (cmd == "start") {
    SensorStartup();
  } else if (cmd == "stop") {
    SensorShutdown();
  } else if (cmd == "read") {
    uint16_t addr = validateArgAddr(arg);
    if (!is_valid_reg(addr)) { Serial.println("read: bad address"); return; }
    Serial.printf("0x%04X = 0x%04X\n", addr, spiRead(addr));
  } else if (cmd == "write") {
    int sep2 = arg.indexOf(' ');
    if (sep2 == -1) { Serial.println("write: usage  write <addr> <val>"); return; }
    uint16_t addr = validateArgAddr(arg.substring(0, sep2));
    long v = arg.substring(sep2 + 1).toInt();
    if (!is_valid_reg(addr) || v < 0 || v > 0xFFFF) {
      Serial.println("write: bad addr/val"); return;
    }
    spiWrite(addr, (uint16_t)v);
    Serial.printf("wrote 0x%04X = 0x%04X\n", addr, (uint16_t)v);
  } else if (cmd == "dump") {
    if (!sensor_running) { Serial.println("sensor not running"); return; }
    SensorDumpRegisters();
  } else if (cmd == "stream") {
    if (!sensor_running) { Serial.println("start sensor first"); return; }
    uint32_t n = arg.length() ? arg.toInt() : 1;
    SensorStream(n);
  } else if (cmd == "verbose") {
    verbose = !verbose;
    Serial.printf("verbose=%d\n", verbose);
  } else {
    Serial.printf("unknown cmd '%s' (try '?')\n", cmd.c_str());
  }
}

void PrintHelp(void) {
  Serial.println("--- AISC110C Sensor Tester ---");
  Serial.println(" ?                : this help");
  Serial.println(" start            : power on + boot + default config");
  Serial.println(" stop             : stop exposure + shut down");
  Serial.println(" read  <addr>     : read 16-bit register (hex addr ok)");
  Serial.println(" write <addr> <v> : write 16-bit register");
  Serial.println(" dump             : dump all registers");
  Serial.println(" stream [n]       : run n internal exposures, report line rate");
  Serial.println(" verbose          : toggle periodic safety prints");
  Serial.println("-------------------------------");
}