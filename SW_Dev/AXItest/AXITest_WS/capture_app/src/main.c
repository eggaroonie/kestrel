/****************************************************************************
 * main.c - AXILITE2 AI CODE BECAUSE IM NOT GONNA CODE AN ENTIRE UART UI FOR A HARDWARE TEST
 *
 * Jackson Newman
 * 10/4/26
 *
 * UART terminal "GUI" for the AXILite2 capture/touch test.
 * Shows live status at the top and accepts typed commands at the bottom.
 *
 * Needs a terminal that understands ANSI escape codes`
 * (screen, minicom, PuTTY, Tera Term) at 115200 8N1.
 ****************************************************************************/

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

/* Base addresses */
#define AXILITE2_BASE       XPAR_AXILITE2_0_BASEADDR
#define UART_BASE           STDIN_BASEADDRESS   /* same UART xil_printf uses */

/* Read offsets */
#define REG_CTRL            0x0u
#define REG_TOUCH_CNT       0x4u
#define REG_FRAME_CNT       0x8u
#define REG_FRAME_TARGET_R  0xCu    /* readback of frame_cnt_target */

/* Write offsets */
#define REG_FRAME_TARGET_W  0x8u

/* CTRL write bit positions */
#define CTRL_CAP_EN         0u
#define CTRL_TEST_THING     1u
#define CTRL_DATA_READY     2u
#define CTRL_TOUCH          3u
#define CTRL_TOUCH_MASK     (3u << CTRL_TOUCH)
#define CTRL_RSTN           5u

/* CTRL read bits (read side of 0x0 means something different) */
#define STAT_TOUCH_RCVD     (1u << 3)
#define STAT_CAP_STATUS     (1u << 4)

#define POLL_LIMIT          100000000u
#define REFRESH_LOOPS       500000u   /* status redraw every N loop passes */

/* ANSI escape codes. Octal \033 is used because "\x1b7" would be
 * parsed as one hex escape, not ESC followed by '7'. */
#define ESC                 "\033"

/* Screen layout (row numbers) */
#define ROW_TITLE           1
#define ROW_HELP            2
#define ROW_FRAMES          4
#define ROW_CAPTURE         5
#define ROW_TOUCH           6
#define ROW_TARGET          7
#define ROW_MSG             9
#define ROW_PROMPT          11

#define LINE_MAX            64
#define MSG_MAX             96

static uint32_t ctrl_shadow = 0;
static char     msg[MSG_MAX] = "Ready. Type help to redraw the screen.";

/*********************************************************************
 * reg_write()
 *
 * Write a value to an offset from the AXILITE2 base address
 *********************************************************************/
static inline void reg_write(uint32_t off, uint32_t val) {
    Xil_Out32(AXILITE2_BASE + off, val);
}

/*********************************************************************
 * reg_read()
 *
 * Read a register at an offset from the AXILITE2 base address
 *********************************************************************/
static inline uint32_t reg_read(uint32_t off) {
    return Xil_In32(AXILITE2_BASE + off);
}

/*********************************************************************
 * ctrl_write()
 *
 * Set one bit of CTRL to val (0 or 1) and write it to hardware.
 * Uses the shadow because reading CTRL returns status, not slv_reg0.
 *********************************************************************/
static void ctrl_write(uint32_t bit, uint32_t val) {
    ctrl_shadow = (ctrl_shadow & ~(1u << bit)) | ((val & 1u) << bit);
    Xil_Out32(AXILITE2_BASE + REG_CTRL, ctrl_shadow);
}

/*********************************************************************
 * ctrl_get()
 *
 * Current value of one CTRL bit, from the shadow
 *********************************************************************/
static inline uint32_t ctrl_get(uint32_t bit) {
    return (ctrl_shadow >> bit) & 1u;
}

/*********************************************************************
 * touch_set()
 *
 * Set the 2-bit touch field (0-3) and write it to hardware
 *********************************************************************/
static void touch_set(uint32_t val) {
    ctrl_shadow = (ctrl_shadow & ~(CTRL_TOUCH_MASK)) | ((CTRL_TOUCH_MASK) & (val << CTRL_TOUCH));
    Xil_Out32(AXILITE2_BASE + REG_CTRL, ctrl_shadow);
}

/*********************************************************************
 * wait_status()
 *
 * Poll a CTRL status bit until it reads as want_set.
 * Returns false on timeout.
 *********************************************************************/
static bool wait_status(uint32_t mask, bool want_set) {
    for (uint32_t i = 0; i < POLL_LIMIT; i++) {
        bool is_set = (reg_read(REG_CTRL) & mask) != 0u;
        if (is_set == want_set) {
            return true;
        }
    }
    return false;
}

/*********************************************************************
 * pl_reset()
 *
 * Pulse the soft reset: clears counters in capture_test1 and touch_test
 *********************************************************************/
static void pl_reset(void) {
    ctrl_write(CTRL_RSTN, 0u);
    ctrl_write(CTRL_RSTN, 1u);
}

/*********************************************************************
 * touch_event()
 *
 * Handshake with touch_test. The touch value must already be set
 * with touch_set(), so it is valid when data_ready falls.
 *********************************************************************/
static bool touch_event(void) {
    ctrl_write(CTRL_DATA_READY, 1u);
    if (!wait_status(STAT_TOUCH_RCVD, true)) {
        ctrl_write(CTRL_DATA_READY, 0u);
        return false;
    }
    ctrl_write(CTRL_DATA_READY, 0u);    /* PL adds touch on this edge */
    return wait_status(STAT_TOUCH_RCVD, false);
}

/*********************************************************************
 * Screen helpers
 *********************************************************************/
static void goto_row(int row) {
    xil_printf(ESC "[%d;1H" ESC "[2K", row);   /* move to row, clear it */
}

static void draw_prompt(const char *line) {
    goto_row(ROW_PROMPT);
    xil_printf("> %s", line);
}

/* Redraw the status block without moving the user's cursor */
static void draw_status(void) {
    uint32_t stat    = reg_read(REG_CTRL);
    uint32_t frames  = reg_read(REG_FRAME_CNT);
    uint32_t touches = reg_read(REG_TOUCH_CNT);
    uint32_t target  = reg_read(REG_FRAME_TARGET_R);
    uint32_t tval    = (ctrl_shadow & CTRL_TOUCH_MASK) >> CTRL_TOUCH;

    xil_printf(ESC "7");                       /* save cursor */

    goto_row(ROW_FRAMES);
    xil_printf("Frame count    : %d", (int)frames);

    goto_row(ROW_CAPTURE);
    xil_printf("Capture status : %s   (cap_enable = %d)",
               (stat & STAT_CAP_STATUS) ? "CAPTURING" : "idle",
               (int)ctrl_get(CTRL_CAP_EN));

    goto_row(ROW_TOUCH);
    xil_printf("Touch count    : %d   (touch value = %d)", (int)touches, (int)tval);

    goto_row(ROW_TARGET);
    xil_printf("Frame target   : %d%s", (int)target, (target == 0u) ? "   (0 = no limit)" : "");

    goto_row(ROW_MSG);
    xil_printf("%s", msg);

    xil_printf(ESC "8");                       /* restore cursor */
}

/* Full redraw: clear screen, title, help, prompt, status */
static void draw_screen(const char *line) {
    xil_printf(ESC "[2J");
    goto_row(ROW_TITLE);
    xil_printf("--- AXILite2 test ---");
    goto_row(ROW_HELP);
    xil_printf("Commands: c_en, c_disable, frame_target <n>, touch, touch_set <0-3>, reset, help");
    draw_prompt(line);                          /* leaves cursor on the prompt */
    draw_status();
}

/*********************************************************************
 * parse_number()
 *
 * Parse a whole-string unsigned number (decimal or 0x hex).
 * Returns false if arg is missing or not a valid number.
 *********************************************************************/
static bool parse_number(const char *arg, unsigned long *out) {
    if (arg == NULL) {
        return false;
    }
    char *end;
    *out = strtoul(arg, &end, 0);
    return (end != arg) && (*end == '\0');
}

/*********************************************************************
 * run_command()
 *
 * Execute one typed command line. Sets msg with the result.
 *********************************************************************/
static void run_command(char *line) {
    unsigned long n;

    for (char *p = line; *p; p++) {
        *p = (char)tolower((unsigned char)*p);
    }

    char *cmd = strtok(line, " \t");
    char *arg = strtok(NULL, " \t");
    if (cmd == NULL) {
        return;
    }

    if (strcmp(cmd, "c_en") == 0) {
        ctrl_write(CTRL_CAP_EN, 0u);            /* fresh 0 -> 1 edge restarts capture */
        ctrl_write(CTRL_CAP_EN, 1u);
        snprintf(msg, MSG_MAX, "Capture enabled.");

    } else if (strcmp(cmd, "c_disable") == 0) {
        ctrl_write(CTRL_CAP_EN, 0u);
        snprintf(msg, MSG_MAX, "Capture disabled.");

    } else if (strcmp(cmd, "frame_target") == 0) {
        if (!parse_number(arg, &n)) {
            snprintf(msg, MSG_MAX, "Usage: frame_target <n>   (0 = no limit)");
        } else {
            reg_write(REG_FRAME_TARGET_W, (uint32_t)n);
            snprintf(msg, MSG_MAX, "Frame target set to %lu.", n);
        }

    } else if (strcmp(cmd, "touch") == 0) {
        if (touch_event()) {
            snprintf(msg, MSG_MAX, "Touch sent (value %lu).",
                     (unsigned long)((ctrl_shadow & CTRL_TOUCH_MASK) >> CTRL_TOUCH));
        } else {
            snprintf(msg, MSG_MAX, "Touch FAILED: no response from touch_test.");
        }

    } else if (strcmp(cmd, "touch_set") == 0) {
        if (!parse_number(arg, &n) || n > 3u) {
            snprintf(msg, MSG_MAX, "Usage: touch_set <0-3>");
        } else {
            touch_set((uint32_t)n);
            snprintf(msg, MSG_MAX, "Touch value set to %lu.", n);
        }

    } else if (strcmp(cmd, "reset") == 0) {
        pl_reset();
        snprintf(msg, MSG_MAX, "PL logic reset (counters cleared).");

    } else if (strcmp(cmd, "help") == 0) {
        snprintf(msg, MSG_MAX, "Screen redrawn.");
        draw_screen("");

    } else {
        snprintf(msg, MSG_MAX, "Unknown command: %s", cmd);
    }
}

/*********************************************************************
 * main()
 *********************************************************************/
int main(void) {
    char     line[LINE_MAX];
    uint32_t len = 0;
    uint32_t loops = 0;

    ctrl_write(CTRL_RSTN, 1u);      /* release PL logic from reset */

    line[0] = '\0';
    draw_screen(line);

    for (;;) {
        /* Refresh the status block every REFRESH_LOOPS passes.
         * Lower the number for faster updates, raise it if typing lags. */
        if (++loops >= REFRESH_LOOPS) {
            draw_status();
            loops = 0;
        }

        /* Non-blocking: only read when a character is waiting */
        if (!XUartPs_IsReceiveData(UART_BASE)) {
            continue;
        }
        char c = (char)XUartPs_RecvByte(UART_BASE);

        if (c == '\r' || c == '\n') {
            if (len == 0u) {
                continue;               /* ignore empty lines and \r\n pairs */
            }
            line[len] = '\0';
            run_command(line);
            len = 0;
            line[0] = '\0';
            draw_prompt(line);
            draw_status();

        } else if ((c == '\b' || c == 0x7F) && len > 0u) {
            len--;
            line[len] = '\0';
            xil_printf("\b \b");        /* erase the character on screen */

        } else if (isprint((unsigned char)c) && len < (LINE_MAX - 1u)) {
            line[len++] = c;
            line[len] = '\0';
            xil_printf("%c", c);        /* echo */
        }
    }

    return 0;
}

/* handwritten code */
// /****************************************************************************
//  * main.c - AXILITE2
//  *
//  * Jackson Newman
//  * 10/4/26
//  *
//  *
//  *
//  ****************************************************************************/

// #include "xparameters.h"    // base addresses from hardware
// #include "xil_io.h"         // Xil_In32 / Xil_Out32
// #include "xil_printf.h"     // xil_printf over UART
// #include <stdio.h>          
// #include <stdint.h>
// #include <stdbool.h>

// /* Base address for AXILITE2 */
// #define AXILITE2_BASE   XPAR_AXILITE2_0_BASEADDR

// /* Read offsets */
// #define REG_CTRL        0x0u
// #define REG_TOUCH_CNT   0x4u
// #define REG_FRAME_CNT   0x8u
// #define REG_FRAME_TARGET_R 0x8u
// /* Write Address offset */
// #define REG_FRAME_CNT_W

// /* Write bits */
// #define CTRL_CAP_EN     0u
// #define CTRL_TEST_THING 1u
// #define CTRL_DATA_READY 2u
// #define CTRL_TOUCH      3u
// #define CTRL_TOUCH_MASK (3u << 3)
// #define CTRL_RSTN       5u

// /* Read bits (Read from CTRL data) */
// #define STAT_TOUCH_RCVD (1u << 3)
// #define STAT_CAP_STATUS (1u << 4)

// #define POLL_LIMIT 100000000u

// static uint32_t ctrl_shadow = 0;

// /*********************************************************************
//  * reg_write()
//  *
//  * Write a value to an address based off AXILITE2
//  *
//  *********************************************************************/
// static inline void reg_write(uint32_t off, uint32_t val) {
//     /* Give Xil_Out32 your address plus what to write to it */
//     Xil_Out32(AXILITE2_BASE + off,val);

// }

// /********************************************************************
//  * reg_read()
//  *
//  * Read a register from AXILITE2
//  *
//  ********************************************************************/
//  static inline uint32_t reg_read(uint32_t off) {
//     return Xil_In32(AXILITE2_BASE + off);
// }

// static void ctrl_write(uint32_t bit, uint32_t val) {
//    ctrl_shadow = (ctrl_shadow & ~(1u << bit)) | ((val & 1u) << bit);
//    Xil_Out32(AXILITE2_BASE + REG_CTRL, ctrl_shadow);
// }

// static void touch_set(uint32_t val) {
//     ctrl_shadow = (ctrl_shadow & ~(CTRL_TOUCH_MASK)) | ((CTRL_TOUCH_MASK) & (val << 3));
//     Xil_Out32(AXILITE2_BASE + REG_CTRL, ctrl_shadow); 
// }

// int main(void) {
//     xil_printf("\r\n--- AXILite2 test ---\r\n");
//     xil_printf("Options: C_en, C_disable, frame_target, touch, touch_set (1,2, or 3) reset.\r\n");
    
    
// }






