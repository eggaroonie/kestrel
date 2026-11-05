/* register map & other constants for AIStorm AISC110C image sensor 
*
*  Naythan Ramos - WWU EECE - 2026
*/

#include <stdint.h>

#ifndef AISC110C_H
#define AISC110C_H

/* GPIO Functions */
typedef enum {
  img_en_in         = 1,
  img_exposure_in   = 2,
  led_pwm_in        = 3,
  io_clk_out        = 4,
  framesync_out     = 5,
  data_valid_out    = 6,
  led_pwm_out       = 7,
  en_array_in       = 8,
  irq_out           = 9
} GPIO_FUNC;

/* LED Driver Output Current */
typedef enum {
  uA1040    = 0x07,
  uA1350    = 0x09,
  uA1500    = 0x0A,
  uA1820    = 0x0C,
  uA1980    = 0x0D,
  uA2130    = 0x0E,
  uA2290    = 0x0F,
  uA2590    = 0x11,
  uA5000    = 0x21,
  uA7500    = 0x31,
  uA10000   = 0x34,
  uA12500   = 0x52,
  uA15000   = 0x62,
  uA17500   = 0x72,
  uA20000   = 0x83,
  uA22500   = 0x93,
  uA25000   = 0xA4,
  uA30000   = 0xC4,
  uA32500   = 0xD5,
  uA35000   = 0xE5,
  uA37500   = 0xF5,
  uA40000   = 0xFF
} LED_DRVR_I;

/* AISC110C Register Map */
typedef struct {
  volatile uint16_t REVISION;         // Address Offset: 0x00
  volatile uint16_t PRODUCT_ID;       // Address Offset: 0x02
  volatile uint16_t RESERVED1;        // Address Offset: 0x04
  volatile uint16_t STATUS;           // Address Offset: 0x06
  volatile uint16_t GPIO_CTRL;        // Address Offset: 0x08
  volatile uint16_t IMG_CTRL;         // Address Offset: 0x10
  volatile uint16_t IMG_CFG_0;        // Address Offset: 0x12
  volatile uint16_t IMG_CFG_1;        // Address Offset: 0x14
  volatile uint16_t IMG_CFG_2;        // Address Offset: 0x16
  volatile uint16_t IMG_CFG_3;        // Address Offset: 0x18
  volatile uint16_t LED_CTRL;         // Address Offset: 0x20
  volatile uint16_t LED_PWM;          // Address Offset: 0x22
  volatile uint16_t CP_CFG;           // Address Offset: 0x24
  volatile uint16_t IMG_CFG_4;        // Address Offset: 0x30
  volatile uint16_t IMG_CNT;          // Address Offset: 0x32
  volatile uint16_t IMG_CNT_THRESH;   // Address Offset: 0x34
  volatile uint16_t INTR_EN;          // Address Offset: 0x36
  volatile uint16_t INTR_ST;          // Address Offset: 0x38
} AISC100C_REG_Typedef;

#define AISC110C_ADDR_BASE (0x00)
#define AISC110C ((AISC110C_REG_Typedef *) AISC110C_ADDR_BASE)

/* Bit Definitions for Revision Register - Read-Only */
#define REV_MNR_Pos                 (0U)
#define REV_MNR_Msk                 (0xFF << REV_MNR_Pos)
#define REV_MNR                     REV_MNR_Msk
#define REV_MJR_Pos                 (4U)
#define REV_MJR_Msk                 (0xFF << REV_MJR_Pos)
#define REV_MJR                     REV_MJR_Msk

/* Bit Definitions for Product ID Register - Read-Only */
#define PRID_FID_Pos                (0U)
#define PRID_FID_Msk                (0xF << PRID_FID_Pos)
#define PRID_FID                    PRID_FID_Msk
#define PRID_SFID_Pos               (4U)
#define PRID_SFID_Msk               (0xF << PRID_SFID_Pos)
#define PRID_SFID                   PRID_SFID
#define PRID_MNR_Pos                (8U)
#define PRID_MNR_Msk                (0xF << PRID_MNR_Msk)
#define PRID_MNR                    PRID_MNR_Msk

/* Bit Definitions for Status Register - Read-Only */
#define STAT_BD_Pos                 (15U)
#define STAT_BD_Msk                 (0x1 << STAT_BD_Pos)
#define STAT_BD                     STAT_BD_Msk

/* Bit Definitions for GPIO Control Register */
#define GPIO_CTRL_GPIO1_Pos         (0U)
#define GPIO_CTRL_GPIO1_Msk         (0xF << GPIO_CTRL_GPIO1_Pos)
#define GPIO_CTRL_GPIO1             GPIO_CTRL_GPIO1_Msk
#define GPIO_CTRL_GPIO2_Pos         (4U)
#define GPIO_CTRL_GPIO2_Msk         (0xF << GPIO_CTRL_GPIO2_Pos)
#define GPIO_CTRL_GPIO2             GPIO_CTRL_GPIO2_Msk
#define GPIO_CTRL_GPIO3_Pos         (8U)
#define GPIO_CTRL_GPIO3_Msk         (0xF << GPIO_CTRL_GPIO3_Pos)
#define GPIO_CTRL_GPIO3             GPIO_CTRL_GPIO3
#define GPIO_CTRL_GPIO4_Pos         (12U)
#define GPIO_CTRL_GPIO4_Msk         (0xF << GPIO_CTRL_GPIO4_Pos)
#define GPIO_CTRL_GPIO              GPIO_CTRL_GPIO4_Msk

/* Bit Definitions for Imager Control 0 Register */
#define IMG_CFG0_EN_IMG_Pos         (0U)
#define IMG_CFG0_EN_IMG_Msk         (0x1 << IMG_CTRL1_EN_IMG_Pos)
#define IMG_CFG0_EN_IMG             IMG_CTRL1_EN_IMG_Msk
#define IMG_CFG0_EXP_MODE_Pos       (1U)
#define IMG_CFG0_EXP_MODE_Msk       (0x1 << IMG_CTRL1_EXP_MODE_Pos)
#define IMG_CFG0_EXP_MODE           IMG_CTRL1_EXP_MODE_Msk
#define IMG_CFG0_EXT_TRIG_Pos       (2U)
#define IMG_CFG0_EXT_TRIG_Msk       (1U << IMG_CTRL1_EXT_TRIG_Pos)
#define IMG_CFG0_EXT_TRIG           IMG_CTRL1_EXT_TRIG_Msk
#define IMG_CFG0_EN_IMG_TH_Pos      (3U)
#define IMG_CFG0_EN_IMG_TH_Msk      (0xFF << IMG_CTRL1_EN_IMG_TH_Pos)
#define IMG_CFG0_EN_IMG_TH          IMG_CTRL1_EN_IMG_TH_Msk
#define IMG_CFG0_IMG_SIZE_Pos       (12U)
#define IMG_CFG0_IMG_SIZE_Msk       (0x3 << IMG_CTRL1_IMG_SIZE_Pos)
#define IMG_CFG0_IMG_SIZE           IMG_CTRL1_IMG_SIZE_Msk
#define IMG_CFG0_IMG_AON_Pos        (15U)
#define IMG_CFG0_IMG_AON_Msk        (0x1 << IMG_CTRL1_IMG_AON_Pos)
#define IMG_CFG0_IMG_AON            IMG_CTRL1_IMG_AON_Msk

/* Bit Definitions for Imager Control Register 1 */
#define IMG_CFG1_EXP_TIME_Pos       (0U)
#define IMG_CFG1_EXP_TIME_Msk       (0xFF << IMG_CTRL1_EXP_TIME_Pos)
#define IMG_CFG1_EXP_TIME           IMG_CTRL1_EXP_TIME_Msk
#define IMG_CFG1_EXP_PRSC_Pos       (8U)
#define IMG_CFG1_EXP_PRSC_Msk       (0xFF << IMG_CTRL1_EXP_PRSC_Pos)
#define IMG_CFG1_EXP_PRSC           IMG_CTRL1_EXP_PRSC_Msk
#define IMG_CFG1_EXP_OFF_Pos        (12U)
#define IMG_CFG1_EXP_OFF_Msk        (0xFF << IMG_CTRL1_EXP_OFF_Pos)
#define IMG_CFG1_EXP_OFF            IMG_CTRL1_EXP_OFF

/* Bit Definitions for Imager Control Register 2 */
#define IMG_CFG2_EXP_CONT_INT_Pos   (0U)
#define IMG_CFG2_EXP_CONT_INT_Msk   (0xFFF << IMG_CTRL2_EXP_CONT_INT_Pos)
#define IMG_CFG2_EXP_CONT_INT       IMG_CTRL2_EXP_CONT_INT_Msk
#define IMG_CFG2_EXP_CONT_PSC_Pos   (12U)
#define IMG_CFG2_EXP_CONT_PSC_Msk   (0xFF << IMG_CTRL2_EXP_CONT_PSC_Pos)
#define IMG_CFG2_EXP_CONT_PSC       IMG_CTRL2_EXP_CONT_PSC_Msk

/* Bit Definitions for Imager Config Register 3 */
#define IMG_CFG3_PIXEL_ACC_Pos      (0U)
#define IMG_CFG3_PIXEL_ACC_Msk      (0xF << IMG_CTRL3_PIXEL_ACC_Pos)
#define IMG_CFG3_PIXEL_ACC          IMG_CTRL3_PIXEL_ACC_Msk

/* Bit Definitions for LED Control Register */
#define LED_CTRL_EN_LED_Pos         (0U)
#define LED_CTRL_EN_LED_Msk         (0x1 << LED_CTRL_EN_LED_Pos)
#define LED_CTRL_EN_LED             LED_CTRL_EN_LED_Msk
#define LED_CTRL_LED_AON_Pos        (1U)
#define LED_CTRL_LED_AON_Msk        (0x1 << LED_CTRL_LED_AON_Pos)
#define LED_CTRL_LED_AON            LED_CTRL_LED_AON_Msk
#define LED_CTRL_DRVR_I_Pos         (2U)
#define LED_CTRL_DRVR_I_Msk         (0xFF << LED_CTRL_DRVR_I_Pos)
#define LED_CTRL_DRVR_I             LED_CTRL_DRVR_I_Msk

/* Bit Definitions for LED PWM Register */
#define LED_PWM_DUTY_Pos            (0U)
#define LED_PWM_DUTY_Msk            (0x1F << LED_PWM_DUTY_Pos)
#define LED_PWM_DUTY                LED_PWM_DUTY_Msk
#define LED_PWM_FREQ_DIV_Pos        (10U)
#define LED_PWM_FREQ_DIV_Msk        (0x1F << LED_PWM_FREQ_DIV_Pos)
#define LED_PWM_FREQ_DIV            LED_PWM_FREQ_DIV_Msk

/* Bit Definitions for CP Config Register */
#define CP_CFG_EN_CP_Pos            (0U)
#define CP_CFG_EN_CP_Msk            (0x1 << CP_CFG_EN_CP_Pos)
#define CP_CFG_EN_CP                CP_CFG_EN_CP_Msk
#define CP_CFG_CP_FREQ_DIV_Pos      (1U)
#define CP_CFG_CP_FREQ_DIV_Msk      (0xF << CP_CFG_CP_FREQ_DIV_Pos)
#define CP_CFG_CP_FREQ_DIV          CP_CFG_CP_FREQ_DIV

/* Bit Definitions for Imager Config Register 4*/
#define IMG_CFG4_EN_ARRAY_Pos       (0U)
#define IMG_CFG4_EN_ARRAY_Msk       (0x1 << IMG_CTRL4_EN_ARRAY_Pos)
#define IMG_CFG4_EN_ARRAY           IMG_CTRL4_EN_ARRAY_Msk
#define IMG_CFG4_ARRAY_AON_Pos      (1U)
#define IMG_CFG4_ARRAY_AON_Msk      (0x1 << IMG_CTRL_ARRAY_AON_Msk)
#define IMG_CFG4_ARRAY_AON          IMG_CTRL4_ARRAY_AON_Msk
#define IMG_CFG4_EN_ARRAY_TH_Pos    (2U)
#define IMG_CFG4_EN_ARRAY_TH_Msk    (0x2F << IMG_CTRL4_EN_ARRAY_TH_Pos)
#define IMG_CFG4_EN_ARRAY_TH        IMG_CTRL4_EN_ARRAY_TH_Msk

/* Bit Definitions for Image Count Register */
#define IMG_CNT_Pos                 (0U)
#define IMG_CNT_Msk                 (0xFFFF << IMG_CNT_Pos)
#define IMG_CNT                     IMG_CNT_Msk

/* Bit Definitions for Image Count Threshold Register */
#define IMG_CNT_THRESH_Pos          (0U)
#define IMG_CNT_THRESH_Msk          (0xFFFF << IMG_CNT_THRESH_Pos)
#define IMG_CNT_THRESH              IMG_CNT_THRESH_Msk

/* Bit Definitions for Interrupt Enable Register  */
#define INTR_EN_IMG_DONE_Pos        (0U)
#define INTR_EN_IMG_DONE_Msk        (0x1 << INTR_EN_IMG_DONE_Pos)
#define INTR_EN_IMG_DONE            INTR_EN_IMG_DONE_Msk

/* Bit Definitions for Raw Interrupt Status Register */
#define INTR_ST_IMG_DONE_Pos        (0U)
#define INTR_ST_IMG_DONE_Msk        (0x1 << INTR_ST_IMG_DONE_Pos)
#define INTR_ST_IMG_DONE            INTR_ST_IMG_DONE_Msk


#endif // AISC110C_H