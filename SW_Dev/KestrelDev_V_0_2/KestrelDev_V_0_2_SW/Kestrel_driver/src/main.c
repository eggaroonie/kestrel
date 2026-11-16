/******************************************************************************
 * main.c 
 *
 * Jackson Newman
 * 10/4/26
 *
 * Testing DDR
 ******************************************************************************/

 /***************************** Include Files *********************************/
#include "xparameters.h"    // base addresses from hardware
#include "xil_io.h"         // Xil_In32 / Xil_Out32
#include "xil_printf.h"     // xil_printf over UART
#include "xuartps_hw.h"     // non-blocking UART receive
#include "sleep.h"          // usleep
#include <stdio.h>         // snprintf
#include <stdint.h>
#include <stdbool.h>
#include <stdlib.h>         // strtoul
#include <string.h>         // strcmp, strtok
#include <ctype.h>          // tolower, isprint
#include "control.h"
#include "axidma.h"
#include "spi.h"
#include "xgpiops.h"
#include "aisc110.h"

/******************** Constant Definitions **********************************/
#define AXI4LITE_CAPTURELOGIC_BASE  XPAR_AXI4LITE_CAPTURELOGIC_0_BASEADDR
#define UART_BASE                   STDIN_BASEADDRESS
#define AXIDMA_BASE_LOW             XPAR_AXI_DMA_0_BASEADDR
#define AXIDMA_BASE_HIGH            XPAR_AXI_DMA_0_HIGHADDR

/* Registers are 32 bits wide, so offsets step by 4 (ADDR_LSB = 2 in the IP) */
/* Read offsets */
#define REG_CTRL            0x0u
#define REG_FRAME_CNT       0x4u
#define REG_CAP_STATUS      0x8u    // 1 while capturing, 0 when idle/done
#define REG_MISSED_WORDS    0xCu
/* Write offsets */
#define REG_FRAME_CNT_TARGET    0x4u
#define REG_DUMMY_DATA          0x8u

const uint8_t CMD_READ  = 0x40;
const uint8_t CMD_WRITE = 0x24;

/* Minimum exposure-start interval per image size, us (Table 2) */
static const float MIN_INTERVAL_US[5] = {24.96f, 12.96f, 12.96f, 6.96f, 3.84f};
static bool     sensor_running = false;
static bool     verbose        = true;    // register dump after start
static bool     monitor        = false;   // periodic 1.8 V print
static bool     rail_warned    = false;
#define IMG_ALWAYS_ON    1   // IMG_CFG0.IMG_AON: keep PLL/imager support on (simplest bring-up)
#define ARRAY_ALWAYS_ON  1   // IMG_CFG4.ARRAY_AON: keep analog array on
#define CP_SETTLE_MS     20  // wait for -1.5 V charge pump to come up
#define V1V8_DIVIDER     1.0f // set if the 1.8 V rail reaches the ADC through a divider (Vrail = Vadc


#define SENSOR_EN_PIN 78   /* PS GPIO EMIO bit 0 -> ENABLE[0] */
#define PROBE_MODE    1    /* 1 = start the sensor and leave it streaming forever (for scoping); 0 = key-press captures */

static XGpioPs Gpio;

/************************* Functions *****************************************/
/* Poll cap_status until it equals want; returns false if timeout_us passes first */
static bool wait_cap_status(uint32_t want, uint32_t timeout_us) {
    for (uint32_t t = 0; t < timeout_us; t += 10) {
        if ((Xil_In32(AXI4LITE_CAPTURELOGIC_BASE + REG_CAP_STATUS) & 1u) == want)
            return true;
        usleep(10);
    }
    return false;
}

/******************************************************************************
 * SensorConfigureDefaults
 * 
 * Function:
 *      configure the sensor:
 *          80x120
 *          prescale = 1
 *          100 us continuous interval
 *          full pixel accuracy
 *          En Array
 *          disable pwm
 *  #define FRAME_PERIOD_US  10000
#define EXPOSURE_US      163 
 *          
 ******************************************************************************/
 #define FRAME_PERIOD_US  100     // original rate: 10,000 frames/s
#define EXPOSURE_US      75    // light-gathering time per frame: 1..163 us, 0.64 us steps (was 20 us)
#define EXPOSURE_TICKS   ((EXPOSURE_US * 25U) / 16U)   // 25 MHz / 16 = 0.64 us per tick
_Static_assert(EXPOSURE_TICKS >= 1 && EXPOSURE_TICKS <= 255, "EXPOSURE_US must be 1..163");
_Static_assert(FRAME_PERIOD_US >= EXPOSURE_US + 25, "frame period must cover exposure + 24 us readout");
void SensorConfigureDefaults(void) {
    // Charge pump first so -1.5 V has time to settle while we configure the rest
    SPI_WriteReg(AISC_REG_CP_CFG, CP_CFG_EN_CP_Msk | (0U << CP_CFG_CP_FREQ_DIV_Pos));

    SPI_WriteReg(AISC_REG_GPIO_CTRL, 0x0000);

    // Imager Config0: EN_IMG, continuous exposure (runs until START is cleared),
    // no ext trigger, EN_IMG_TH=0x0F, full 80x120, IMG_AON per macro.
    uint16_t cfg0 = IMG_CFG0_EN_IMG_Msk | IMG_CFG0_EXP_MODE_Msk;
    cfg0 |= (0x0FU << IMG_CFG0_EN_IMG_TH_Pos) & IMG_CFG0_EN_IMG_TH_Msk;
    cfg0 |= ((uint16_t)IMG_SIZE_80x120 << IMG_CFG0_IMG_SIZE_Pos) & IMG_CFG0_IMG_SIZE_Msk;
    if (IMG_ALWAYS_ON) cfg0 |= IMG_CFG0_IMG_AON_Msk;
    SPI_WriteReg(AISC_REG_IMG_CFG0, cfg0);

    // Imager Config1: prescale=15 (25 MHz/16 = 0.64 us tick), EXPOSURE_TICKS ticks -> EXPOSURE_US exposure
    SPI_WriteReg(AISC_REG_IMG_CFG1,
            ((15U            << IMG_CFG1_EXP_PRSC_Pos) & IMG_CFG1_EXP_PRSC_Msk) |
            ((EXPOSURE_TICKS << IMG_CFG1_EXP_TIME_Pos) & IMG_CFG1_EXP_TIME_Msk));

    // Imager Config2: 1 us tick (4 MHz / (3+1)), 100 us continuous interval.
    // (Reset value 0x300F = 15 us is shorter than the 24.96 us full-frame minimum.)
    SPI_WriteReg(AISC_REG_IMG_CFG2,
        (15U << IMG_CFG2_EXP_CONT_PSC_Pos) | ((FRAME_PERIOD_US / 4) << IMG_CFG2_EXP_CONT_INT_Pos));

    // Imager Config3: full pixel accuracy (4x8-bit)
    SPI_WriteReg(AISC_REG_IMG_CFG3, 0x0000);

    // Imager Config4: EN_ARRAY, EN_ARRAY_TH = 0x1C (28 us, datasheet reset), ARRAY_AON per macro.
    uint16_t cfg4 = IMG_CFG4_EN_ARRAY_Msk |
                    ((0x1CU << IMG_CFG4_EN_ARRAY_TH_Pos) & IMG_CFG4_EN_ARRAY_TH_Msk);
    if (ARRAY_ALWAYS_ON) cfg4 |= IMG_CFG4_ARRAY_AON_Msk;
    SPI_WriteReg(AISC_REG_IMG_CFG4, cfg4);

    // LED: disabled; PWM at reset values (divider 7, duty 0x0A = 50%)
    SPI_WriteReg(AISC_REG_LED_CTRL, 0x0000);
    SPI_WriteReg(AISC_REG_LED_PWM,
            (7U << LED_PWM_FREQ_DIV_Pos) | (0x0AU << LED_PWM_DUTY_Pos));

    /* enable frame sync*/
    SPI_WriteReg(AISC_REG_GPIO_CTRL, GPIO_FUNC_FRAMESYNC << GPIO_CTRL_GPIO1_Pos);   // 0x0005

    // Image counter / interrupts
    SPI_WriteReg(AISC_REG_IMG_CNT, 0);
    SPI_WriteReg(AISC_REG_IMG_CNT_TH, 0xFFFF);   // let IMG_CNT count frames (it stops at the threshold)
    SPI_WriteReg(AISC_REG_INTR_EN, 0);
    SPI_WriteReg(AISC_REG_INTR_ST, INTR_ST_IMG_DONE_Msk);   // W1C

    usleep(CP_SETTLE_MS * 1000);  // let VN1V5 reach -1.5 V (scope it!)
    }


/* Power on the sensor, wait for BootDone, verify IDs, load defaults.
 * Needs the GPIO and SPI drivers initialised first. Returns false on failure. */
bool SensorStartup(void) {
    uint16_t st = 0, pid = 0, rev = 0;

    xil_printf("[init] Driving ENABLE high...\r\n");
    XGpioPs_WritePin(&Gpio, SENSOR_EN_PIN, 1);
    usleep(5000);   // regulators start in <200 us, allow POR + eFuse load

    xil_printf("[init] Waiting for BootDone...\r\n");
    for (uint32_t ms = 0; ; ms += 2) {
        SPI_ReadReg(AISC_REG_STATUS, &st);
        if (st & STAT_BD_Msk) break;
        if (ms > 2000) {
            xil_printf("[init] TIMEOUT waiting for BootDone (STATUS=0x%04x)\r\n", st);
            XGpioPs_WritePin(&Gpio, SENSOR_EN_PIN, 0);
            return false;
        }
        usleep(2000);
    }

    // A floating MISO reads 0xFFFF and would pass the BootDone test, so verify IDs.
    SPI_ReadReg(AISC_REG_PRODUCT_ID, &pid);
    SPI_ReadReg(AISC_REG_REVISION, &rev);
    xil_printf("[init] PRODUCT_ID=0x%04x REVISION=0x%04x\r\n", pid, rev);
    if (pid != AISC_PRODUCT_ID_EXPECTED || (rev >> 8) != AISC_REV_MAJOR_EXPECTED) {
        xil_printf("[init] ID mismatch (expected PID 0x8020, REV major 0x0B). Check SPI wiring/mode/clock.\r\n");
        XGpioPs_WritePin(&Gpio, SENSOR_EN_PIN, 0);
        return false;
    }

    xil_printf("[init] BootDone set, IDs OK. Loading defaults...\r\n");
    SensorConfigureDefaults();
    sensor_running = true;
    xil_printf("[init] Sensor ready.\r\n");
    return true;
}

/* Throw away any keys already received, so one key press = one capture.
 * Enter sends \r\n, and keys pressed during a capture queue up in the UART FIFO. */
static void DrainUart(void) {
    usleep(2000);   // give a trailing \n time to arrive
    while (XUartPs_IsReceiveData(UART_BASE)) {
        (void)XUartPs_RecvByte(UART_BASE);
    }
}

/* Debug for a capture that never finishes. Call while the sensor is still running.
 *   - register readbacks show whether the SPI writes landed
 *   - IMG_CNT shows whether the sensor is producing frames
 *   - DMA BDs filled shows whether DATAVAL + data reached the FPGA (each BD = one frame of bytes)
 *   - if data arrived but frame_cnt is 0, the FPGA isn't seeing framesync on GPIO[0] */
static void DumpCaptureDebug(void) {
    uint16_t v;
    XAxiDma_BdRing *Ring = XAxiDma_GetRxRing(&AxiDma);
    UINTPTR Cur = XAxiDma_ReadReg(Ring->ChanBase, XAXIDMA_CDESC_OFFSET);

    SPI_ReadReg(AISC_REG_STATUS,    &v); xil_printf("  STATUS     0x%04x\r\n", v);
    SPI_ReadReg(AISC_REG_GPIO_CTRL, &v); xil_printf("  GPIO_CTRL  0x%04x (want 0x0005)\r\n", v);
    SPI_ReadReg(AISC_REG_IMG_CTRL,  &v); xil_printf("  IMG_CTRL   0x%04x (want 0x0001)\r\n", v);
    SPI_ReadReg(AISC_REG_IMG_CFG0,  &v); xil_printf("  IMG_CFG0   0x%04x (want 0x807b)\r\n", v);
    SPI_ReadReg(AISC_REG_IMG_CNT,   &v); xil_printf("  IMG_CNT    %d (frames the sensor made)\r\n", v);
    xil_printf("  DMA SR     0x%08x\r\n",
               (unsigned int)XAxiDma_ReadReg(Ring->ChanBase, XAXIDMA_SR_OFFSET));
    xil_printf("  DMA BDs filled: %d (frames of data that reached DDR)\r\n",
               (int)((Cur - Ring->FirstBdPhysAddr) / Ring->Separation));
}



int main(void) {
    XGpioPs_Config *Cfg = XGpioPs_LookupConfig(XPAR_XGPIOPS_0_BASEADDR);
    XGpioPs_CfgInitialize(&Gpio, Cfg, Cfg->BaseAddr);
    XGpioPs_SetDirectionPin(&Gpio, SENSOR_EN_PIN, 1);      /* output */
    XGpioPs_SetOutputEnablePin(&Gpio, SENSOR_EN_PIN, 1);
    XGpioPs_WritePin(&Gpio, SENSOR_EN_PIN, 0);             /* held low until SensorStartup() */

    uint32_t frame_cnt_target = 600;
    write_ctrl_reg(RSTN, 1);
    xil_printf("Kestrel driver ready - press a key to capture\r\n");
    
    if (AXIDMA_INIT() != XST_SUCCESS) {
        xil_printf("DMA init failed\r\n");
        return XST_FAILURE;
    }
        if (SPI_INIT() != XST_SUCCESS) {
        xil_printf("DMA init failed\r\n");
        return XST_FAILURE;
    }
    
    XGpioPs_WritePin(&Gpio, SENSOR_EN_PIN, 1);   
    write_reg_AXI(AXI4LITE_CAPTURELOGIC_BASE, REG_DUMMY_DATA, TEST_START_VALUE);
    if (!SensorStartup()) {
        xil_printf("Sensor startup failed\r\n");
        return XST_FAILURE;
    }

    if (PROBE_MODE) {
        SPI_WriteReg(AISC_REG_IMG_CTRL, IMG_CTRL_START_Msk);   // continuous mode: runs until START is cleared
        xil_printf("Probe mode: sensor streaming, one frame every %d us\r\n", FRAME_PERIOD_US);
        for (;;) { }
    }

    for (;;) {
        // wait for input

        if (XUartPs_IsReceiveData(UART_BASE)) {
            // consume the key (and anything after it) so it doesn't retrigger
            u8 key = XUartPs_RecvByte(UART_BASE);
            DrainUart();
            xil_printf("capture started (key 0x%02x)\r\n", key);

            write_reg_AXI(AXI4LITE_CAPTURELOGIC_BASE, REG_FRAME_CNT_TARGET, frame_cnt_target);
            write_ctrl_reg(CAP_ENABLE, 0);  // capture logic only rearms after cap_enable drops
            write_ctrl_reg(CAP_ENABLE, 1);

            SPI_WriteReg(AISC_REG_IMG_CTRL, IMG_CTRL_START_Msk);   // MOSI: 24 00 10 00 01


            if (!wait_cap_status(1, 999999999)) {
                xil_printf("timeout: capture never started (ctrl=0x%08x)\r\n",
                           Xil_In32(AXI4LITE_CAPTURELOGIC_BASE + REG_CTRL));
                write_ctrl_reg(CAP_ENABLE, 0);
                SPI_WriteReg(AISC_REG_IMG_CTRL, 0);
                DrainUart();
                continue;
            }
            if (!wait_cap_status(0, 999999999)) {
                xil_printf("timeout: capture never finished (frame_cnt=%d)\r\n",
                           Xil_In32(AXI4LITE_CAPTURELOGIC_BASE + REG_FRAME_CNT));
                DumpCaptureDebug();
                write_ctrl_reg(CAP_ENABLE, 0);
                SPI_WriteReg(AISC_REG_IMG_CTRL, 0);
                DrainUart();
                continue;
            }

            uint32_t frame_cnt = Xil_In32(AXI4LITE_CAPTURELOGIC_BASE + REG_FRAME_CNT);
            uint32_t missed_words = Xil_In32(AXI4LITE_CAPTURELOGIC_BASE + REG_MISSED_WORDS);
            if (CheckDmaResult(&AxiDma) == XST_SUCCESS) {
                xil_printf("DMA check passed\r\n");
            }

            SPI_WriteReg(AISC_REG_IMG_CTRL, 0);   // stop exposures; next START is a fresh 0->1
            write_ctrl_reg(CAP_ENABLE, 0);
            DumpCaptureDebug();
            xil_printf("frame_cnt: %d, missed_words: %d\r\n", frame_cnt, missed_words);
            DrainUart();   // ignore keys pressed while capturing
        }
    }

    return 0;

}




