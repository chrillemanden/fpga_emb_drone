/*
 * BRAM_LED.c: simple BRAM_LED test application
 *
 * By: Emad Samuel Malki Ebeid
 * email: esme@mmmmi.sdu.dk
 *
 * ------------------------------------------------
 * | UART TYPE   BAUD RATE                        |
 * ------------------------------------------------
 *   ps7_uart    115200 (configured by bootrom/bsp)
 */

#include <stdio.h>
#include "platform.h"
#include "xil_printf.h"
#include "xparameters.h"
#include "xbram.h"
#include "sleep.h"

#define MYMEM_u(A) ((volatile u32*)ConfigPtr->MemBaseAddress)[A]
//#define MAXMEM	   ((ConfigPtr->MemHighAddress-ConfigPtr->MemBaseAddress)+1)/sizeof(u32)

XBram Bram;
XBram_Config *ConfigPtr;
int initBRAM();

int main()
{
    init_platform();

	initBRAM();

	xil_printf("BRAM initialization complete.\r\n");

	int mem_value, addr_value=1;

  while(1)
  {
		  //xil_printf("Enter memory value for address %d:\r\n", addr_value);
	  	  //scanf("%d", &mem_value);

		  mem_value = MYMEM_u(addr_value);				//corresponds to memory address 4 on the FPGA (X"40000004")

		  xil_printf("Memory value %d for addr %d.\r\n", mem_value, addr_value);

	  usleep(1000);

  } //end while loop

    cleanup_platform();
    return 0;
}


/*
 * This function initializes the BRAM driver. If an error occurs then exit
 */

int initBRAM()
{

	//BRAM initialization
	xil_printf("Initializing block RAM...\n\r");
	int Status;

	ConfigPtr = XBram_LookupConfig(XPAR_BRAM_0_DEVICE_ID);
	if (ConfigPtr == (XBram_Config *) NULL) {
		return XST_FAILURE;
	}

	Status = XBram_CfgInitialize(&Bram, ConfigPtr,
			ConfigPtr->CtrlBaseAddress);
	if (Status != XST_SUCCESS) {
		return XST_FAILURE;
	}

	xil_printf("Done.\r\n");
	return XST_SUCCESS;
}

