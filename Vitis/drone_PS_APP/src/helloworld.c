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
#include "time.h"
#include "math.h"

#define MYMEM_u(A) ((volatile u32*)ConfigPtr->MemBaseAddress)[A]
#define gyro_div 131
#define acc_div 16384
#define PI 3.14159265359
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

	int8_t signed_acc_data = 0;
	int16_t gyro_raw_x, gyro_raw_y, gyro_raw_z, acc_raw_x, acc_raw_y, acc_raw_z = 0;
	float gyro_angle_x, gyro_angle_y, acc_angle_x, acc_angle_y, total_angle_x, total_angle_y = 0;


  while(1)
  {
		  //xil_printf("Enter memory value for address %d:\r\n", addr_value);
	  	  //scanf("%d", &mem_value);

		  //mem_value = MYMEM_u(addr_value);				//corresponds to memory address 4 on the FPGA (X"40000004")

		  //signed_acc_data = mem_value;
		  //xil_printf("Memory value %d for addr %d.\r\n", signed_acc_data, addr_value);
		acc_raw_x = MYMEM_u(0);
		acc_raw_y = MYMEM_u(1);
		acc_raw_z = MYMEM_u(2);
		gyro_raw_x = MYMEM_u(3);
		gyro_raw_y = MYMEM_u(4);
		gyro_raw_z = MYMEM_u(5);
		calc_gyro_ang(gyro_raw_x, gyro_raw_y, &gyro_angle_x, &gyro_angle_y);
		calc_acc_ang(acc_raw_x, acc_raw_y, acc_raw_z, &acc_angle_x, &acc_angle_y);
		calc_total_ang(&gyro_angle_x, &gyro_angle_y, &acc_angle_x, &acc_angle_y, &total_angle_x, &total_angle_y);
	  //usleep(1000);

  } //end while loop

    cleanup_platform();
    return 0;
}

void calc_gyro_ang(int16_t gyro_raw_x, int16_t gyro_raw_y, float* gyro_angle_x, float* gyro_angle_y)
{
	static float gyro_error_x, gyro_error_y = 0;
	static int i, gyro_error = 0;
	static float prev_gyro = gyro_raw_y;
	struct timeval stop, start;
	static float prev_time_us, time_us = 0;
	//Initial value for gyroscope
	if (gyro_error == 0)
	{
		gyro_error_x = gyro_raw_x/gyro_div;
		gyro_error_y = gyro_raw_y/gyro_div;
		if (prev_gyro != gyro_raw_y)
		{
			if (i<199)
			{
				prev_gyro = gyro_raw_y;
				gyro_error_x = gyro_error_x + gyro_raw_x/gyro_div;
				gyro_error_y = gyro_error_y + gyro_raw_y/gyro_div;
				i++;	
			}
			else if (i == 199)
			{
				gettimeofday(&start, NULL);
				prev_time_us = start.tv_sec*1000000+start.tv_usec;
				gyro_error_x = (gyro_error_x + gyro_raw_x/gyro_div)/200;
				gyro_error_y = (gyro_error_y + gyro_raw_y/gyro_div)/200;
				gyro_error = 1;
			}
			
		}
	}
	else
	{
		if (prev_gyro != gyro_raw_y)
		{
			prev_gyro = gyro_raw_y;
			gettimeofday(&start, NULL);
			time_us = start.tv_sec*1000000+start.tv_usec;
			gyro_angle_x = gyro_angle_x + ((gyro_raw_x/gyro_div)-gyro_error_x)*(time_us-prev_time_us);
			gyro_angle_y = gyro_angle_y + ((gyro_raw_y/gyro_div)-gyro_error_y)*((time_us-prev_time_us)/1000000);
			prev_time_us = time_us;
			//xil_printf("Gyro x angle: %f", gyro_angle_x);
			//xil_printf("Gyro y angle: %f", gyro_angle_y);
		}

	}
	
}

void calc_acc_ang(int16_t acc_raw_x, int16_t acc_raw_y, int16_t acc_raw_z, float* acc_angle_x, float* acc_angle_y)
{
	static float acc_error_x, acc_error_y = 0;
	static int i, acc_error = 0;
	static float prev_acc = acc_raw_z;
	//Initial value for accelerometer
	if (acc_error == 0)
	{
		acc_error_x = acc_raw_x/acc_div;
		acc_error_y = acc_raw_y/acc_div;
		if (prev_acc != acc_raw_z)
		{
			prev_acc = acc_raw_z;
			acc_error_x = acc_error_x + (atan((acc_raw_y)/sqrt(pow((acc_raw_x),2)+pow((acc_raw_z),2)))*(180/PI));
			acc_error_y = acc_error_y + (atan((acc_raw_x)/sqrt(pow((acc_raw_y),2)+pow((acc_raw_z),2)))*(180/PI));
			if (i == 199)
			{
				acc_error_x = acc_error_x/200;
				acc_error_y = acc_error_y/200;
				acc_error = 1;
			}
			i++;
			
		}
	}
	else
	{
		if (prev_acc != acc_raw_y)
		{
			prev_acc = acc_raw_y;
			acc_angle_x = (atan((acc_raw_y)/sqrt(pow((acc_raw_x),2)+pow((acc_raw_z),2)))*(180/PI)) - acc_error_x;
			acc_angle_y = (atan((acc_raw_x)/sqrt(pow((acc_raw_y),2)+pow((acc_raw_z),2)))*(180/PI)) - acc_error_y;
			//xil_printf("acc x angle: %f", acc_angle_x);
			//xil_printf("acc y angle: %f", acc_angle_y);
		}
	}
	
}

void calc_total_ang(float* gyro_angle_x, float* gyro_angle_y, float* acc_angle_x, float* acc_angle_y, float* total_angle_x, float* total_angle_y)
{
	total_angle_x = 0.98 *(total_angle_x + gyro_angle_x) + 0.02*acc_angle_x;
	total_angle_y = 0.98 *(total_angle_y + gyro_angle_y) + 0.02*acc_angle_y;
	xil_printf("total x angle: %f", total_angle_x);
	xil_printf("total y angle: %f", total_angle_y);
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

