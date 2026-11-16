/* register map & other constants for AIStorm AISC110C image sensor
 * Checked against AISC110C_Datasheet.pdf (rev 1.0, 2025-04-29)
 *
 * v2 fixes:
 *   - LED_PWM_FREQ_DIV is bits 15:10 (6 bits), not 9:5
 *   - LED_I_10000uA is 0x36 (was 0x34); added LED_I_27500uA (0xB4)
 *   - added expected ID constants
 */
#ifndef AISC110C_H
#define AISC110C_H

#include <stdint.h>

/* Expected identification values (Tables 5, 6) */
#define AISC_PRODUCT_ID_EXPECTED  0x8020
#define AISC_REV_MAJOR_EXPECTED   0x0B     /* REVISION[15:8]; minor may be 0x00/0x10/0x20 */

/* GPIO Functions (Table 9) */
typedef enum {
  GPIO_FUNC_NONE        = 0,
  GPIO_FUNC_IMG_EN      = 1,
  GPIO_FUNC_EXPOSURE    = 2,
  GPIO_FUNC_LED_PWM_IN  = 3,
  GPIO_FUNC_IO_CLK_OUT  = 4,
  GPIO_FUNC_FRAMESYNC   = 5,
  GPIO_FUNC_DATA_VALID  = 6,
  GPIO_FUNC_LED_PWM_OUT = 7,
  GPIO_FUNC_EN_ARRAY    = 8,
  GPIO_FUNC_IRQ_OUT     = 9
} GPIO_FUNC;

/* Register addresses (16-bit) */
#define AISC_REG_REVISION      0x0000
#define AISC_REG_PRODUCT_ID    0x0002
#define AISC_REG_STATUS        0x0006
#define AISC_REG_GPIO_CTRL     0x0008
#define AISC_REG_IMG_CTRL      0x0010
#define AISC_REG_IMG_CFG0      0x0012
#define AISC_REG_IMG_CFG1      0x0014
#define AISC_REG_IMG_CFG2      0x0016
#define AISC_REG_IMG_CFG3      0x0018   /* datasheet section heading says 0x16; Table 4 says 0x18 */
#define AISC_REG_LED_CTRL      0x0020
#define AISC_REG_LED_PWM       0x0022
#define AISC_REG_CP_CFG        0x0024
#define AISC_REG_IMG_CFG4      0x0030
#define AISC_REG_IMG_CNT       0x0032
#define AISC_REG_IMG_CNT_TH    0x0034
#define AISC_REG_INTR_EN       0x0036
#define AISC_REG_INTR_ST       0x0038

/* Status Register */
#define STAT_BD_Pos  15U
#define STAT_BD_Msk  (1U << STAT_BD_Pos)

/* GPIO Ctrl Register: 4 nibbles */
#define GPIO_CTRL_GPIO1_Pos  0U
#define GPIO_CTRL_GPIO1_Msk  (0xFU << GPIO_CTRL_GPIO1_Pos)
#define GPIO_CTRL_GPIO2_Pos  4U
#define GPIO_CTRL_GPIO2_Msk  (0xFU << GPIO_CTRL_GPIO2_Pos)
#define GPIO_CTRL_GPIO3_Pos  8U
#define GPIO_CTRL_GPIO3_Msk  (0xFU << GPIO_CTRL_GPIO3_Pos)
#define GPIO_CTRL_GPIO4_Pos  12U
#define GPIO_CTRL_GPIO4_Msk  (0xFU << GPIO_CTRL_GPIO4_Pos)

/* Imager Ctrl Register (0x10) */
#define IMG_CTRL_START_Pos   0U
#define IMG_CTRL_START_Msk   (1U << IMG_CTRL_START_Pos)

/* Imager Config0 (0x12) */
#define IMG_CFG0_EN_IMG_Pos       0U
#define IMG_CFG0_EN_IMG_Msk       (1U << IMG_CFG0_EN_IMG_Pos)
#define IMG_CFG0_EXP_MODE_Pos     1U
#define IMG_CFG0_EXP_MODE_Msk     (1U << IMG_CFG0_EXP_MODE_Pos)
#define IMG_CFG0_EXT_TRIG_Pos     2U
#define IMG_CFG0_EXT_TRIG_Msk     (1U << IMG_CFG0_EXT_TRIG_Pos)
#define IMG_CFG0_EN_IMG_TH_Pos    3U
#define IMG_CFG0_EN_IMG_TH_Msk    (0x1FFU << IMG_CFG0_EN_IMG_TH_Pos)  /* bits 11:3 */
#define IMG_CFG0_IMG_SIZE_Pos     12U
#define IMG_CFG0_IMG_SIZE_Msk     (0x7U << IMG_CFG0_IMG_SIZE_Pos)     /* bits 14:12 */
#define IMG_CFG0_IMG_AON_Pos      15U
#define IMG_CFG0_IMG_AON_Msk      (1U << IMG_CFG0_IMG_AON_Pos)

/* Imager Config1 (0x14) */
#define IMG_CFG1_EXP_TIME_Pos     0U
#define IMG_CFG1_EXP_TIME_Msk     (0xFFU << IMG_CFG1_EXP_TIME_Pos)   /* bits 7:0 */
#define IMG_CFG1_EXP_PRSC_Pos     8U
#define IMG_CFG1_EXP_PRSC_Msk     (0xFU  << IMG_CFG1_EXP_PRSC_Pos)   /* bits 11:8 */
#define IMG_CFG1_EXP_OFF_Pos      12U
#define IMG_CFG1_EXP_OFF_Msk      (0xFU  << IMG_CFG1_EXP_OFF_Pos)    /* bits 15:12 */

/* Imager Config2 (0x16) */
#define IMG_CFG2_EXP_CONT_INT_Pos 0U
#define IMG_CFG2_EXP_CONT_INT_Msk (0xFFFU << IMG_CFG2_EXP_CONT_INT_Pos) /* bits 11:0 */
#define IMG_CFG2_EXP_CONT_PSC_Pos 12U
#define IMG_CFG2_EXP_CONT_PSC_Msk (0xFU   << IMG_CFG2_EXP_CONT_PSC_Pos) /* bits 15:12 */

/* Imager Config3 (0x18) */
#define IMG_CFG3_PIXEL_ACC_Pos    0U
#define IMG_CFG3_PIXEL_ACC_Msk    (1U << IMG_CFG3_PIXEL_ACC_Pos)

/* LED Control (0x20) */
#define LED_CTRL_EN_LED_Pos       0U
#define LED_CTRL_EN_LED_Msk       (1U << LED_CTRL_EN_LED_Pos)
#define LED_CTRL_LED_AON_Pos      1U
#define LED_CTRL_LED_AON_Msk      (1U << LED_CTRL_LED_AON_Pos)
#define LED_CTRL_DRVR_I_Pos       2U
#define LED_CTRL_DRVR_I_Msk       (0xFFU << LED_CTRL_DRVR_I_Pos)     /* IPROG[7:0], bits 9:2 */

/* LED PWM (0x22): FREQ_DIV [15:10], reserved [9:5], DUTY [4:0] (reset 0x1C0A) */
#define LED_PWM_DUTY_Pos          0U
#define LED_PWM_DUTY_Msk          (0x1FU << LED_PWM_DUTY_Pos)        /* 0..0x14 = 0..100% in 5% steps */
#define LED_PWM_FREQ_DIV_Pos      10U
#define LED_PWM_FREQ_DIV_Msk      (0x3FU << LED_PWM_FREQ_DIV_Pos)

/* CP Config (0x24) */
#define CP_CFG_EN_CP_Pos          0U
#define CP_CFG_EN_CP_Msk          (1U << CP_CFG_EN_CP_Pos)
#define CP_CFG_CP_FREQ_DIV_Pos    1U
#define CP_CFG_CP_FREQ_DIV_Msk    (0xFU << CP_CFG_CP_FREQ_DIV_Pos)   /* bits 4:1 */

/* Imager Config4 (0x30) -- reset 0x71 = EN_ARRAY | (0x1C << 2) */
#define IMG_CFG4_EN_ARRAY_Pos     0U
#define IMG_CFG4_EN_ARRAY_Msk     (1U << IMG_CFG4_EN_ARRAY_Pos)
#define IMG_CFG4_ARRAY_AON_Pos    1U
#define IMG_CFG4_ARRAY_AON_Msk    (1U << IMG_CFG4_ARRAY_AON_Pos)
#define IMG_CFG4_EN_ARRAY_TH_Pos  2U
#define IMG_CFG4_EN_ARRAY_TH_Msk  (0x7FU << IMG_CFG4_EN_ARRAY_TH_Pos) /* bits 8:2, unit: us */

/* Image count / interrupt */
#define IMG_CNT_Msk               (0xFFFFU)
#define IMG_CNT_TH_Msk            (0xFFFFU)
#define INTR_EN_IMG_DONE_Pos      0U
#define INTR_EN_IMG_DONE_Msk      (1U << INTR_EN_IMG_DONE_Pos)
#define INTR_ST_IMG_DONE_Pos      0U
#define INTR_ST_IMG_DONE_Msk      (1U << INTR_ST_IMG_DONE_Pos)

/* LED driver current settings = raw IPROG[7:0] codes, from Table 3.
 * Use as: (LED_I_xxx << LED_CTRL_DRVR_I_Pos) in LED_CTRL. */
typedef enum {
  LED_I_1040uA  = 0x07, LED_I_1350uA  = 0x09, LED_I_1500uA  = 0x0A,
  LED_I_1820uA  = 0x0C, LED_I_1980uA  = 0x0D, LED_I_2130uA  = 0x0E,
  LED_I_2290uA  = 0x0F, LED_I_2590uA  = 0x11, LED_I_5000uA  = 0x21,
  LED_I_7500uA  = 0x31, LED_I_10000uA = 0x36, LED_I_12500uA = 0x52,
  LED_I_15000uA = 0x62, LED_I_17500uA = 0x72, LED_I_20000uA = 0x83,
  LED_I_22500uA = 0x93, LED_I_25000uA = 0xA4, LED_I_27500uA = 0xB4,
  LED_I_30000uA = 0xC4, LED_I_32500uA = 0xD5, LED_I_35000uA = 0xE5,
  LED_I_37500uA = 0xF5, LED_I_40000uA = 0xFF
} LED_DRVR_I;

/* Imager size field values for IMG_CFG0.IMG_SIZE */
typedef enum {
  IMG_SIZE_80x120 = 0,
  IMG_SIZE_80x60  = 1,
  IMG_SIZE_40x120 = 2,
  IMG_SIZE_40x60  = 3,
  IMG_SIZE_40x30  = 4
} IMG_SIZE;

#endif // AISC110C_H