#include "xparameters.h"    // base addresses from hardware
#include "xil_io.h"         // Xil_In32 / Xil_Out32
#include "xil_printf.h"     // xil_printf over UART
#include "xuartps_hw.h"     // non-blocking UART receive
#include <stdio.h>          // snprintf
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

void write_bit_AXI(uint32_t base_address, uint32_t offset, uint32_t bit, uint8_t val) {
    uint32_t cur_ctrl = Xil_In32(base_address + offset);
    uint32_t new_ctrl = (cur_ctrl & ~(1u << bit)) | ((val & 1u) << bit);
    Xil_Out32(base_address + offset, new_ctrl);
}
void write_reg_AXI(uint32_t base_address, uint32_t offset, uint32_t val) {
    Xil_Out32(base_address + offset, val);
}

// void read_DMA(uint32_t base_address, uint32_t offset) {
    
// }
void write_ctrl_reg(CTRL_T selection, uint8_t val) {
    uint32_t offset = 0;
    uint32_t bit;
    // eventually make another typedef handling behavior of each control bit
    switch (selection) {
        case CAP_ENABLE:
            bit = 0;
            break;
        case RSTN:
            bit = 1;
            break;
        default:
            return;
    }
    write_bit_AXI( AXI4LITE_CAPTURELOGIC_BASE, offset, bit, val);
    return;
}