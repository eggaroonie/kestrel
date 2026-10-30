/******************************************************************************
 * axidma.c
 * 
 * Jackson Newman
 * 
 * Creation: 10/28/26
 * Last Revision: 10/30/26   
 * Notes:
 *      Based off "xaxidma_example_sg_poll.c".
 * 
 * Function: 
 ******************************************************************************/
#include "axidma.h"
#include "xaxidma_bd.h"
#include "xaxidma_hw.h" // Macros
#include "xaxidma_bdring.h"

/***************************** Include Files *********************************/
#include "xaxidma.h"
#include "xparameters.h"
#include "xdebug.h"
#include "sleep.h"

/* If compiling for 64-bit ARM (ZU3EG yes) */
#ifdef __aarch64__ 
#include "xil_mmu.h"
#endif 

/******************** Constant Definitions **********************************/

#ifndef SDT

    #define DMA_DEV_ID		XPAR_AXIDMA_0_DEVICE_ID

    #ifdef XPAR_AXI_7SDDR_0_S_AXI_BASEADDR
        #define DDR_BASE_ADDR		XPAR_AXI_7SDDR_0_S_AXI_BASEADDR
    #elif defined (XPAR_MIG7SERIES_0_BASEADDR)
        #define DDR_BASE_ADDR	XPAR_MIG7SERIES_0_BASEADDR
    #elif defined (XPAR_MIG_0_C0_DDR4_MEMORY_MAP_BASEADDR)
        #define DDR_BASE_ADDR	XPAR_MIG_0_C0_DDR4_MEMORY_MAP_BASEADDR
    #elif defined (XPAR_PSU_DDR_0_S_AXI_BASEADDR)
        #define DDR_BASE_ADDR	XPAR_PSU_DDR_0_S_AXI_BASEADDR
    #endif

#else
    #ifdef XPAR_MEM0_BASEADDRESS
        #define DDR_BASE_ADDR   XPAR_MEM0_BASEADDRESS
    #elif defined(XPAR_PSU_DDR_0_BASEADDRESS)
        #define DDR_BASE_ADDR   XPAR_PSU_DDR_0_BASEADDRESS  /* xmem_config.h HERE */
    #endif
    // #ifdef XPAR_MEM0_BASEADDRESS
    //     #define DDR_BASE_ADDR		XPAR_MEM0_BASEADDRESS
    // #endif
#endif
/* Most likely goes here */

// #define DDR_BASE_ADDR   XPAR_PSU_DDR_0_BASEADDRESS
#ifndef DDR_BASE_ADDR
    #warning CHECK FOR THE VALID DDR ADDRESS IN XPARAMETERS.H, \
    DEFAULT SET TO 0x01000000
    #define MEM_BASE_ADDR		0x01000000      /* Defined */
#else
    #define MEM_BASE_ADDR		(DDR_BASE_ADDR + 0x1000000)
#endif

#define MAX_PKT_LEN             0x2580  /* Set to one frame: 120 x 80 x 1 byte = 9600 */
#define MARK_UNCACHEABLE        0x701   /* Do not allow BD ring to enter A53 cache */

/* TODO: Must change later only reserves bottom 16MB for sys */
//#define MEM_BASE_ADDR		    (DDR_BASE_ADDR + 0x1000000)

/* Each descriptor is 64 bytes */
#define NUM_RX_BDS          128

#define RX_BD_SPACE_BASE    (MEM_BASE_ADDR)
#define RX_BD_SPACE_HIGH	(MEM_BASE_ADDR + NUM_RX_BDS * XAXIDMA_BD_MINIMUM_ALIGNMENT - 1) /* 8KB of descriptor space */
#define RX_BUFFER_BASE		(MEM_BASE_ADDR + 0x00300000)  /* Where RECEIVED data gets written (3 MB in) */
#define RX_BUFFER_HIGH		(MEM_BASE_ADDR + 0x004FFFFF)  /* End of the RX data area (not actually used in */

#define TEST_START_VALUE	0xC 

// XPAR_AXI_DMA_0_ADDRWIDTH = 0x20 = 32 bits
// XPAR_AXI_DMA_0_SG_LENGTH_WIDTH 0x14 = 20 bits so each descriptor = 2^20 - 1 = 1,048,575 
// Header xaxidma_bd.h


/* XAxiDma_LookupConfig(XPAR_XAXIDMA_0_BASEADDR) */
XAxiDma AxiDma;

/******************************************************************************
 * AXIDMA_INIT()
 * 
 * Function:
 *      This function sets up the Rx channel of the DMA.
 * 
 ******************************************************************************/
int AXIDMA_INIT() {
    int Status;
    XAxiDma_Config *Config;

	Xil_SetTlbAttributes(RX_BD_SPACE_BASE, MARK_UNCACHEABLE);
    Config = XAxiDma_LookupConfig(XPAR_XAXIDMA_0_BASEADDR);

    Status = XAxiDma_CfgInitialize(&AxiDma, Config);
	if (Status != XST_SUCCESS) {
		xil_printf("Initialization failed %d\r\n", Status);
		return XST_FAILURE;
	}

    Status = RxSetup(&AxiDma);
	if (Status != XST_SUCCESS) {
        xil_printf("Recieve Setup Fail %d\r\n", Status);
		return XST_FAILURE;
	}
    return XST_SUCCESS;
}

int RxSetup(XAxiDma *AxiDmaInstPtr) {
    XAxiDma_BdRing *RxRingPtr;

    int Delay =0;
    int Coalesce = 1;       /* Interrupt after every 1 completed packet */
    int Status;
    XAxiDma_Bd BdTemplate;  /* An example BD to copy into every ring slot */
    XAxiDma_Bd *BdPtr;      /* Ptr to the first BD allocated */
    XAxiDma_Bd *BdCurPtr;   /* What BD we are currently filling */
    u32 BdCount;            /* # of BDs that fit in the RX BD area */
    u32 FreeBdCount;        /* Unused BD count */
    UINTPTR RxBufferPtr;    /* Data Buffer attached to current BD */

    int Index;
    RxRingPtr = XAxiDma_GetRxRing(AxiDmaInstPtr);   /* Get the pointer to tbhe RX ring */

    /* Disable interrupts while setting up */
    /* Later use XAxiDma_BdRingIntEnable to re-enable them when we use them */
    XAxiDma_BdRingIntDisable(RxRingPtr, XAXIDMA_IRQ_ALL_MASK);
    
    /* Set delay and coalescing */
    /* what is this? */
    XAxiDma_BdRingSetCoalesce(RxRingPtr, Coalesce, Delay);

    /* Calcualte how many BD fit into BD memory */
    BdCount = XAxiDma_BdRingCntCalc(XAXIDMA_BD_MINIMUM_ALIGNMENT,
					RX_BD_SPACE_HIGH - RX_BD_SPACE_BASE + 1);

    /* Build ring */
    /* RX_BD_SPACE_BASE, RX_BD_SPACE_BASE will eventually be virtual mem in Linux*/
    Status = XAxiDma_BdRingCreate(RxRingPtr, RX_BD_SPACE_BASE,
				      RX_BD_SPACE_BASE,
				      XAXIDMA_BD_MINIMUM_ALIGNMENT, BdCount);
    if (Status != XST_SUCCESS) {
		xil_printf("RX create BD ring failed %d\r\n", Status);
		return XST_FAILURE;
	}                          

    /* Set up the template as blank */
    XAxiDma_BdClear(&BdTemplate);

    /* Fill every BD in the ring with the blank template */
    Status = XAxiDma_BdRingClone(RxRingPtr, &BdTemplate);
    if (Status != XST_SUCCESS) {
		xil_printf("RX clone BD failed %d\r\n", Status);
		return XST_FAILURE;
	}

    /* How many BDs are free? (probably all) */
    FreeBdCount = XAxiDma_BdRingGetFreeCnt(RxRingPtr);

    /* Begin attaching buffers to the ring */
    Status = XAxiDma_BdRingAlloc(RxRingPtr, FreeBdCount, &BdPtr);
    if (Status != XST_SUCCESS) {
		xil_printf("RX alloc BD failed %d\r\n", Status);
		return XST_FAILURE;
	}

    BdCurPtr = BdPtr;               /* Start at the first BD*/
	RxBufferPtr = RX_BUFFER_BASE;   /* The first BD's data buffer */
    
	for (Index = 0; Index < FreeBdCount; Index++) {
        /* Look a this current BD: data recieved sent to this address at RxBufferPtr*/
		Status = XAxiDma_BdSetBufAddr(BdCurPtr, RxBufferPtr);

		if (Status != XST_SUCCESS) {
			/* Print which buffer address and which BD failed */
			xil_printf("Set buffer addr %x on BD %x failed %d\r\n",
				   (unsigned int)RxBufferPtr,
				   (UINTPTR)BdCurPtr, Status);

			return XST_FAILURE;
		}

		/* Tell this BD how many bytes its buffer can hold 9600 bytes. The third
		 * argument is the largest length the hardware supports, so the
		 * driver can reject a length that's too big. */
		Status = XAxiDma_BdSetLength(BdCurPtr, MAX_PKT_LEN,
					     RxRingPtr->MaxTransferLen);
		if (Status != XST_SUCCESS) {
			xil_printf("Rx set length %d on BD %x failed %d\r\n",
				   MAX_PKT_LEN, (UINTPTR)BdCurPtr, Status);
			return XST_FAILURE;
		}

		/* (SOF = Start Of Frame, EOF = End Of Frame not need for RX.
		 * [CAM: NEEDED] Important for your PL design: the S2MM channel
		 * ends a BD when it sees TLAST on the AXI-Stream. Your sensor
		 * capture logic must assert TLAST on the last beat of every
		 * frame, or BDs won't complete where you expect. */
		XAxiDma_BdSetCtrl(BdCurPtr, 0);         /* Control word = 0: no special flags */

        /* Set its Buffer pointer */
		XAxiDma_BdSetId(BdCurPtr, RxBufferPtr);

        /* Next 9600 Bytes of data (frame) */
		RxBufferPtr += MAX_PKT_LEN;
		/* Move to the next BD in the ring. */
		BdCurPtr = (XAxiDma_Bd *)XAxiDma_BdRingNext(RxRingPtr, BdCurPtr);
	}
    /* Dont need for large MB */
    // memset((void *)RX_BUFFER_BASE, 0, MAX_PKT_LEN);

    /* Hand the HW the BD ring, DMA owns it now */
    Status = XAxiDma_BdRingToHw(RxRingPtr, FreeBdCount,
				                BdPtr);
    if (Status != XST_SUCCESS) {
		xil_printf("RX submit hw failed %d\r\n", Status);

		return XST_FAILURE;
	}
    // Cyclic mode XAxiDma_SelectCyclicMode(AxiDmaInstPtr, XAXIDMA_DEVICE_TO_DMA, TRUE)
    /* Start DMA*/
    Status = XAxiDma_BdRingStart(RxRingPtr);
    	if (Status != XST_SUCCESS) {
		xil_printf("RX start hw failed %d\r\n", Status);

		return XST_FAILURE;
	}

	return XST_SUCCESS;
}

/******************************************************************************
 * CheckData()
 * 
 * Function:
 *      
 * 
 ******************************************************************************/
int CheckData() {
    u8 *RxPacket;
    int Index = 0;
    u8 Value;

    RxPacket = (u8 *) RX_BUFFER_BASE;
    Value = TEST_START_VALUE;

    /* We need to invalidate the original RAM values stored in CPU cache so we
     * invlaidate them and throw them away. Re-read the RAM! */
    Xil_DCacheInvalidateRange((UINTPTR)RxPacket, MAX_PKT_LEN);

    for (Index = 0; Index < MAX_PKT_LEN; Index++) {    /* For each of the 32 bytes... */
		if (RxPacket[Index] != Value) {                 /* ...if the received byte doesn't match... */
			/* ...print position, got/expected (in hex) */
			xil_printf("Data error %d: %x/%x\r\n",
				   Index, (unsigned int)RxPacket[Index],
				   (unsigned int)Value);

			return XST_FAILURE;     /* ...and fail on the first mismatch */
		}                           /* End of if */
		Value = (Value + 1) & 0xFF; /* Compute the next expected byte (same rule as when sending) */
	}                               /* End of for loop */

	return XST_SUCCESS;     /* All 32 bytes matched */
}

int CheckDmaResult(XAxiDma *AxiDmaInstPtr) {
    return XST_SUCCESS;
}