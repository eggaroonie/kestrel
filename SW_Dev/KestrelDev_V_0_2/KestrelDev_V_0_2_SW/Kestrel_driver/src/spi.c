/******************************************************************************
 * spi.c 
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
#include "spi.h"

#include "xspips.h"
#include "spi.h"

static XSpiPs Spi;

int SPI_INIT(void) {
    XSpiPs_Config *Cfg = XSpiPs_LookupConfig(XPAR_XSPIPS_0_BASEADDR);
    if (Cfg == NULL) return XST_FAILURE;

    int Status = XSpiPs_CfgInitialize(&Spi, Cfg, Cfg->BaseAddress);
    if (Status != XST_SUCCESS) return Status;

    /* Master, CS held low for the whole transfer. Add
     * XSPIPS_CLK_ACTIVE_LOW_OPTION / XSPIPS_CLK_PHASE_1_OPTION for CPOL/CPHA. */
    XSpiPs_SetOptions(&Spi, XSPIPS_MASTER_OPTION | XSPIPS_FORCE_SSELECT_OPTION);
    XSpiPs_SetClkPrescaler(&Spi, XSPIPS_CLK_PRESCALE_256);   /* 200 MHz / 256 = 781 kHz */
    XSpiPs_SetSlaveSelect(&Spi, 0);                          /* SS0 -> SPI_CS */
    return XST_SUCCESS;
}

/* AISC110C fast commands (datasheet 4.2.2, Table 24), SPI mode 0, MSB first:
 *   WRITE: cmd(1) + addr(2) + data(2)
 *   READ : cmd(1) + addr(2) + dummy(1) + data(2)   (MISO data in bytes 4..5) */
#define AISC_CMD_READ   0x40
#define AISC_CMD_WRITE  0x24

int SPI_WriteReg(u16 Addr, u16 Data) {
    u8 Tx[5] = { AISC_CMD_WRITE, Addr >> 8, Addr & 0xFF, Data >> 8, Data & 0xFF };
    return XSpiPs_PolledTransfer(&Spi, Tx, NULL, sizeof(Tx));
}

int SPI_ReadReg(u16 Addr, u16 *Data) {
    u8 Tx[6] = { AISC_CMD_READ, Addr >> 8, Addr & 0xFF, 0, 0, 0 };
    u8 Rx[6] = { 0 };
    int Status = XSpiPs_PolledTransfer(&Spi, Tx, Rx, sizeof(Tx));
    *Data = ((u16)Rx[4] << 8) | Rx[5];
    return Status;
}




