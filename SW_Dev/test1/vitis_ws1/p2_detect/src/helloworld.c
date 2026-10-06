// p2_detect.c
// Bare-metal app for the Zynq UltraScale+ PS.
// Reads the blink signal from the PL through EMIO GPIO and prints
// every ON/OFF transition to the UART.

#include "xparameters.h"    // auto generated from our hardware .xsa
#include "xgpiops.h"
#include "xil_printf.h"
#include "sleep.h"

#define P2_EMIO_PIN 78  // first EMIO pin on ZynqMP = emio_gpio_i[0]

int main(void)
{
    XGpioPs gpio;   // GPIO driver instance holds teh controllers state, 
                    // base address and if its ready.
    XGpioPs_Config *cfg;    // A pointer to the GPIO static config table
                            // Makes an instance of the struct xGPIO...
    xil_printf("\r\n--- P2 pin 7 detect test ---\r\n");    // Startup message

    /************************************************************************/
    /**
     * Finding the GPIO driver configuration structure for the device.
     *  
     * The configuration structure contains the device ID, base address, and
     * #ifdef used in newer versions of Vitis (2023.2 or later)
     * SDT is the System Device Tree flow, BSP defines SDT when that flow is used.
     * In the SDT flow, drivers are looked up by base address 
     * (XPAR_XGPIOPS_0_BASEADDR, 0xFF0A0000 on ZynqMP).
     * In the older flow, drivers are looked up by device ID
     * (XPAR_XGPIOPS_0_DEVICE_ID, 0 on ZynqMP).
     * Basically checks for both versions just in case.
    *************************************************************************/

    #ifdef SDT
        cfg = XGpioPs_LookupConfig(XPAR_XGPIOPS_0_BASEADDR);
    #else
        cfg = XGpioPs_LookupConfig(XPAR_XGPIOPS_0_DEVICE_ID);
    #endif

    /***********************************************************************
     * Check for initialization error or NULL. 
     * 
    */

    if (cfg == NULL ||
        XGpioPs_CfgInitialize(&gpio, cfg, cfg->BaseAddr) != XST_SUCCESS) {
        xil_printf("GPIO init failed\r\n");
        return -1;
    }

    /***********************************************************************
     * Makes pin 78 an input (0 = input, 1 = output). PS only
     * reads the pin.
     ************************************************************************/

    XGpioPs_SetDirectionPin(&gpio, P2_EMIO_PIN, 0);   // 0 = input
    /***********************************************************************
     * unsigned32 int prev reads the pins current level (0 or 1) and
     * stores it. this will be usd to detect pin level changes.
     * on_count = number of rising edges detected. 
     * 
     ***********************************************************************/
    u32 prev = XGpioPs_ReadPin(&gpio, P2_EMIO_PIN);
    int on_count = 0;

    xil_printf("Watching EMIO pin %d, starting level: %s\r\n",
               P2_EMIO_PIN, prev ? "ON" : "OFF");

    while (1) {
        u32 now = XGpioPs_ReadPin(&gpio, P2_EMIO_PIN);

        if (now && !prev) {
            on_count++;
            xil_printf("P2 pin 7 went ON  (#%d)\r\n", on_count);
        } else if (!now && prev) {
            xil_printf("P2 pin 7 went OFF\r\n");
        }

        prev = now;
        usleep(1000);   // poll every 1 ms
    }

    return 0;
}