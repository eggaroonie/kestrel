/*
 * control.h
 *
 * Jackson Newman
 * Creation: 10/28/26
 * Last Revision: 10/28/26   
 *
 */
#ifndef CONTROL_H
#define CONTROL_H

#include <stdint.h>

typedef enum {
    CAP_ENABLE,
    RSTN
} CTRL_T;

void write_bit_AXI(uint32_t base_address, uint32_t offset, uint32_t bit, uint8_t val);
void write_reg_AXI(uint32_t base_address, uint32_t offset, uint32_t val);
void write_ctrl_reg(CTRL_T selection, uint8_t val);


#endif