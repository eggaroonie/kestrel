/*
 * AXIDMA.H
 *
 * Jackson Newman
 * Creation: 10/29/26
 * Last Revision: 11/5/26   
 * 
 */
#include <xaxidma.h>
#ifndef AXIDMA_H
#define AXIDMA_H

#define TEST_START_VALUE	0x12345678U

extern XAxiDma AxiDma;  /* Defined once in axidma.c */

int AXIDMA_INIT(void);
int RxSetup(XAxiDma *AxiDmaInstPtr);
int CheckData(void);
int CheckDmaResult(XAxiDma *AxiDmaInstPtr);

#endif 