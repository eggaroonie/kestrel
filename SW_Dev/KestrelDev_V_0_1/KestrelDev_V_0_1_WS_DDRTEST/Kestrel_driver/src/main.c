/****************************************************************************
 * main.c 
 *
 * Jackson Newman
 * 10/4/26
 *
 * Testing DDR
 ****************************************************************************/

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

/* Poll cap_status until it equals want; returns false if timeout_us passes first */
static bool wait_cap_status(uint32_t want, uint32_t timeout_us) {
    for (uint32_t t = 0; t < timeout_us; t += 10) {
        if ((Xil_In32(AXI4LITE_CAPTURELOGIC_BASE + REG_CAP_STATUS) & 1u) == want)
            return true;
        usleep(10);
    }
    return false;
}

int main(void) {
    uint32_t frame_cnt_target = 10000;
    write_ctrl_reg(RSTN, 1);
    xil_printf("Kestrel driver ready - press a key to capture\r\n");
    for (;;) {
        // wait for input

        if (XUartPs_IsReceiveData(UART_BASE)) {
            // consume the key so it doesn't retrigger
            (void)XUartPs_RecvByte(UART_BASE);

            write_reg_AXI(AXI4LITE_CAPTURELOGIC_BASE, REG_FRAME_CNT_TARGET, frame_cnt_target);
            write_ctrl_reg(CAP_ENABLE, 0);  // capture logic only rearms after cap_enable drops
            write_ctrl_reg(CAP_ENABLE, 1);

            // 1000 frames at 24.96 us each is ~25 ms, so these timeouts are generous
            if (!wait_cap_status(1, 100000)) {
                xil_printf("timeout: capture never started (ctrl=0x%08x)\r\n",
                           Xil_In32(AXI4LITE_CAPTURELOGIC_BASE + REG_CTRL));
                write_ctrl_reg(CAP_ENABLE, 0);
                continue;
            }
            if (!wait_cap_status(0, 1000000)) {
                xil_printf("timeout: capture never finished (frame_cnt=%d)\r\n",
                           Xil_In32(AXI4LITE_CAPTURELOGIC_BASE + REG_FRAME_CNT));
                write_ctrl_reg(CAP_ENABLE, 0);
                continue;
            }

            uint32_t frame_cnt = Xil_In32(AXI4LITE_CAPTURELOGIC_BASE + REG_FRAME_CNT);
            uint32_t missed_words = Xil_In32(AXI4LITE_CAPTURELOGIC_BASE + REG_MISSED_WORDS);
            write_ctrl_reg(CAP_ENABLE, 0);
            xil_printf("frame_cnt: %d, missed_words: %d\r\n", frame_cnt, missed_words);
        }
    }
    return 0;

}