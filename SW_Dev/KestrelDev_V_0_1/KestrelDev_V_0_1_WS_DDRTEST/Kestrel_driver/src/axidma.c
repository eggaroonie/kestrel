/******************************************************************************
 * axidma.c
 * 
 * Jackson Newman
 * 
 * Creation: 10/28/26
 * Last Revision: 11/5/26   
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

/* A53 only: Xil_SetTlbAttributes() is called unconditionally below */
#include "xil_mmu.h"

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
#define NUM_RX_BDS          220000UL
#define MMU_BLOCK_SIZE      0x200000UL      /* Lower A53 MMU DDR in 2MB blocks */
#define DDR_LOW_END         0x7FEFFFFFUL    /* Last Byte of DDR Lower (lscript.ld )*/

/* Must not be: BD descriptors
 * |NUM_RX_BDS*(64Bytes size of a BD)|
 * but must align with the MMU_BLOCK_SIZE
 * 
 * Example:
 * |Descriptor            |  X   |
 * |MMU_BLOCK|MMU_BLOCK|MMU_BLOCK|
 * X = unallocated space still, do not put Buffer space here
 * 
 * When the CPU reads the buffer data it wants to be fast so it puts
 * it into CPU cache (L1, L2) so it can read the data super fast.
 * BDs do not need to be put into there because they dont hold useful
 * information other than the buffer address.
 * 
 * Doesnt really matter for writes but reading is affected severely.
 * Note: could add cache-coherent interconnect but could be a waste of time*/
#define RX_BD_SPACE_BASE    (MEM_BASE_ADDR)
/* BD minimum alignment 0x40*/
#define RX_BD_SPACE_HIGH    (RX_BD_SPACE_BASE + NUM_RX_BDS * XAXIDMA_BD_MINIMUM_ALIGNMENT - 1)
/* RX_BUFFER BASE adds teh difference betweent he MMU_BLOCK_SIZE to start
 * at the next boundary */
#define RX_BUFFER_BASE      ((RX_BD_SPACE_HIGH  + MMU_BLOCK_SIZE) & ~(MMU_BLOCK_SIZE - 1))
#define RX_BUFFER_HIGH      (RX_BUFFER_BASE + NUM_RX_BDS * MAX_PKT_LEN - 1)

/* Must be true */
_Static_assert(RX_BUFFER_HIGH <= DDR_LOW_END, "RX buffers run past the end of low DDR");
// #define RX_BUFFER_BASE		(MEM_BASE_ADDR + 0x00300000)  /* Where RECEIVED data gets written (3 MB in) */
// #define RX_BUFFER_HIGH		(MEM_BASE_ADDR + 0x004FFFFF)  /* End of the RX data area (not actually used in */

#define TEST_START_VALUE	0x12345678U
#define RX_TIMEOUT_MS       10000    /* Give up waiting on the DMA after ~1 s */

// XPAR_AXI_DMA_0_ADDRWIDTH = 0x20 = 32 bits
// XPAR_AXI_DMA_0_SG_LENGTH_WIDTH 0x14 = 20 bits so each descriptor = 2^20 - 1 = 1,048,575 
// Header xaxidma_bd.h


/* XAxiDma_LookupConfig(XPAR_XAXIDMA_0_BASEADDR) */
XAxiDma AxiDma;     /* The one definition; axidma.h declares it extern for main.c */

/************************* Functions *****************************************/
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

	for (UINTPTR Addr = RX_BD_SPACE_BASE; Addr <= RX_BD_SPACE_HIGH; Addr += MMU_BLOCK_SIZE) {
        Xil_SetTlbAttributes(Addr, MARK_UNCACHEABLE);
    }
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

    u32 Index;
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
    u32 *RxWords;
    u32 Index;
    u32 Expected;

    RxWords  = (u32 *) RX_BUFFER_BASE;
    Expected = __builtin_bswap32(TEST_START_VALUE);    /* 0x78563412, as it lands in DDR */

    /* We need to invalidate the original RAM values stored in CPU cache so we
     * invalidate them and throw them away. Re-read the RAM! */
    Xil_DCacheInvalidateRange((UINTPTR)RxWords, MAX_PKT_LEN);

    for (Index = 0; Index < MAX_PKT_LEN / 4; Index++) {    /* For each of the 2400 words... */
        if (RxWords[Index] != Expected) {
            xil_printf("Data error word %d: %x/%x\r\n", (int)Index,
                       (unsigned int)RxWords[Index], (unsigned int)Expected);
            return XST_FAILURE;
        }
    }

    return XST_SUCCESS;
}

/******************************************************************************
 * CheckDmaResult()
 *
 * Function:
 *      Waits for the RX channel to finish a packet, checks every BD the DMA
 *      handed back (errors + bytes received), checks the data, then gives the
 *      BDs back to the DMA so it can receive the next capture.
 *
 * Notes:
 *      XAxiDma_BdRingFromHw only hands back BDs once their packet has ended
 *      (TLAST). capture_logic_test sends one TLAST at the end of the whole
 *      capture, so the capture has to fit in the ring:
 *      frame_cnt_target <= NUM_RX_BDS, or the DMA runs out of BDs first.
 ******************************************************************************/
int CheckDmaResult(XAxiDma *AxiDmaInstPtr) {
    XAxiDma_BdRing *RxRingPtr;
    XAxiDma_Bd *BdPtr;          /* First BD the DMA handed back */
    XAxiDma_Bd *BdCurPtr;       /* BD we are currently checking */
    int ProcessedBdCount;       /* # of finished BDs handed back */
    u32 FreeBdCount;            /* # of BDs to give back to the DMA */
    u32 BdSts;                  /* Status word the DMA wrote into the BD */
    u32 ActualLen;              /* Bytes the DMA wrote into this BD's buffer */
    u32 TotalLen = 0;           /* Bytes received across all BDs */
    u32 Timeout = RX_TIMEOUT_MS;
    int Result = XST_SUCCESS;   /* Keep checking after a bad BD so every problem prints */
    int Status;
    int Index;

    RxRingPtr = XAxiDma_GetRxRing(AxiDmaInstPtr);

    /* Wait for the DMA to finish a packet */
    while ((ProcessedBdCount = XAxiDma_BdRingFromHw(RxRingPtr, XAXIDMA_ALL_BDS,
                                                    &BdPtr)) == 0) {
        if (Timeout == 0) {
            /* S2MM status register: bit 0 halted, bit 1 idle,
             * bits 4-6 and 8-10 are errors (XAXIDMA_ERR_ALL_MASK) */
            xil_printf("RX timeout, S2MM status 0x%x\r\n",
                       (unsigned int)XAxiDma_ReadReg(RxRingPtr->ChanBase,
                                                     XAXIDMA_SR_OFFSET));
            return XST_FAILURE;
        }
        usleep(1000);
        Timeout--;
    }

    /* Check each BD the DMA handed back */
    BdCurPtr = BdPtr;
    for (Index = 0; Index < ProcessedBdCount; Index++) {
        BdSts = XAxiDma_BdGetSts(BdCurPtr);
        ActualLen = XAxiDma_BdGetActualLength(BdCurPtr, RxRingPtr->MaxTransferLen);
        TotalLen += ActualLen;

        /* Internal, slave, or decode error (decode = bad buffer address) */
        if (BdSts & XAXIDMA_BD_STS_ALL_ERR_MASK) {
            xil_printf("BD %d error, status 0x%x\r\n", Index, (unsigned int)BdSts);
            Result = XST_FAILURE;
        }

        /* Each BD should be one full frame. If TLAST doesn't land on a frame
         * boundary, the last BD (EOF 1) comes back short. */
        if (ActualLen != MAX_PKT_LEN) {
            xil_printf("BD %d got %d bytes, expected %d (EOF %d)\r\n", Index,
                       (int)ActualLen, MAX_PKT_LEN,
                       (BdSts & XAXIDMA_BD_STS_RXEOF_MASK) ? 1 : 0);
            Result = XST_FAILURE;
        }

        BdCurPtr = (XAxiDma_Bd *)XAxiDma_BdRingNext(RxRingPtr, BdCurPtr);
    }

    xil_printf("RX: %d BDs, %d bytes (%d frames)\r\n", ProcessedBdCount,
               (int)TotalLen, (int)(TotalLen / MAX_PKT_LEN));

    /* Check the data before the BDs go back to the DMA, which can overwrite it */
    if (CheckData() != XST_SUCCESS) {
        Result = XST_FAILURE;
    }

    /* Done with these BDs, free them... */
    Status = XAxiDma_BdRingFree(RxRingPtr, ProcessedBdCount, BdPtr);
    if (Status != XST_SUCCESS) {
        xil_printf("RX free BD failed %d\r\n", Status);
        return XST_FAILURE;
    }

    /* ...and give them back to the DMA. Their buffer address and length are
     * still set from RxSetup, and ToHw clears the complete bit. */
    FreeBdCount = XAxiDma_BdRingGetFreeCnt(RxRingPtr);
    Status = XAxiDma_BdRingAlloc(RxRingPtr, FreeBdCount, &BdPtr);
    if (Status != XST_SUCCESS) {
        xil_printf("RX alloc BD failed %d\r\n", Status);
        return XST_FAILURE;
    }

    Status = XAxiDma_BdRingToHw(RxRingPtr, FreeBdCount, BdPtr);
    if (Status != XST_SUCCESS) {
        xil_printf("RX submit hw failed %d\r\n", Status);
        return XST_FAILURE;
    }

    return Result;
}