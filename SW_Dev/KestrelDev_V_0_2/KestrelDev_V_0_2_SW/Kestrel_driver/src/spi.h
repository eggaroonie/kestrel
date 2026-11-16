/*
 * spi.h
 *
 * Jackson Newman
 * Creation: 10/28/26
 * Last Revision: 10/28/26   
 *
 */
#ifndef SPI_H
#define SPI_H

#include <stdint.h>
#include "xspips.h"

int SPI_INIT(void);
int SPI_WriteReg(u16 Addr, u16 Data);
int SPI_ReadReg(u16 Addr, u16 *Data);


#endif

