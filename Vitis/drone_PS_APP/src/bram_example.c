/*
 * BRAM_SPI_GYRO : simple GYRO SPI test example
 *
 
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
#include "time.h"
#include "math.h"

#define MYMEM_u(A) ((volatile u32*)ConfigPtr->MemBaseAddress)[A]
#define gyro_div 131
#define acc_div 16384
#define PI 3.14159265359
#define kp 1
#define ki 1
#define kd 1
//#define MAXMEM	   ((ConfigPtr->MemHighAddress-ConfigPtr->MemBaseAddress)+1)/sizeof(u32)

XBram Bram;
XBram_Config *ConfigPtr;
int initBRAM();

int main()
{
    init_platform();

	initBRAM();

	xil_printf("BRAM initialization complete.\r\n");
	int n_registers = 6;

	int mem_value, addr_value=0;
	int8_t signed_acc_data = 0;
	int16_t signed_data = 0;

  while(1)
  {
		  //xil_printf("Enter memory value for address %d:\r\n", addr_value);
	  	  //scanf("%d", &mem_value);


	  // reset the address value
	  addr_value = 0;

	  for (int i = 0; i < n_registers; ++i)
	  {
		  //mem_value = MYMEM_u(addr_value); // read the memory address
		  signed_data = MYMEM_u(addr_value);
		  //signed_acc_data = MYMEM_u(addr_value);

		  xil_printf("Memory value %d for addr %d.\r\n", signed_data, addr_value);
		  addr_value++;
		  usleep(300000);
	  }
	  xil_printf("\r\n");

		  //mem_value = MYMEM_u(addr_value);				//corresponds to memory address 4 on the FPGA (X"40000004")

		  //signed_acc_data = mem_value;
//		  signed_data = MYMEM_u(addr_value);
//		  xil_printf("Memory value %d for addr %d.\r\n", signed_data, addr_value);
//
//	  usleep(1000);

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

