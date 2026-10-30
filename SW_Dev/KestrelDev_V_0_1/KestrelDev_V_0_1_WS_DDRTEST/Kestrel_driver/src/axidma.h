/*
 * AXIDMA.H
 *
 * Jackson Newman
 * Creation: 10/29/26
 * Last Revision: 10/30/26   
 * 
 */

#include <xaxidma.h>
#ifndef AXIDMA_H
#define AXIDMA_H

int AXIDMA_INIT(void);
int RxSetup(XAxiDma *AxiDmaInstPtr);
int CheckData(void);
int CheckDmaResult(XAxiDma *AxiDmaInstPtr);


#endif 
