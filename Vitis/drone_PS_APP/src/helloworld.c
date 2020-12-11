/*
 * Gyro example
 *
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
//#define gyro_div 131.0
//#define acc_div 16384
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


	int mem_value, addr_value=1;

	int8_t signed_acc_data = 0;
	int16_t gyro_raw_x, gyro_raw_y, gyro_raw_z, acc_raw_x, acc_raw_y, acc_raw_z = 0;
	float gyro_angle_x = 0.0, gyro_angle_y = 0.0, acc_angle_x = 0.0, acc_angle_y = 0.0, total_angle_x = 0.0, total_angle_y = 0.0;

	float pwm_RF = 0.0, pwm_RB = 0.0, pwm_LF = 0.0, pwm_LB = 0.0;
	float elapsed_time = 0.0;
//	printf("Gyro x angle: %.2f \n", gyro_angle_x);
//	printf("Gyro y angle: %.2f \n", gyro_angle_y);
//	printf("acc_angle_x: %.2f \n", acc_angle_x);
//	printf("acc_angle_y: %.2f \n", acc_angle_y);
//	printf("total_angle_x: %.2f \n", total_angle_x);
//	printf("total_angle_y: %.2f \n", total_angle_y);


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
//		xil_printf("acc x: %d \n", acc_raw_x);
//		xil_printf("acc y: %d \n", acc_raw_y);
//		xil_printf("acc z: %d \n", acc_raw_z);
//		xil_printf("gyro x: %d \n", gyro_raw_x);
//		xil_printf("gyro y: %d \n", gyro_raw_y);
//		xil_printf("gyro z: %d \n\r", gyro_raw_z);

		//xil_printf("before calc_gyro_ang\n\r");
		calc_gyro_ang(&gyro_raw_x, &gyro_raw_y, &gyro_angle_x, &gyro_angle_y, &elapsed_time);
		//xil_printf("before calc_acc_ang\n\r");
		calc_acc_ang(&acc_raw_x, &acc_raw_y, &acc_raw_z, &acc_angle_x, &acc_angle_y);
		//xil_printf("before calc_total_ang\n\r");
		printf("Before calling total-angle-function:\nGyro x angle: %.2f \n", gyro_angle_x);
		printf("Gyro y angle: %.2f \n\r", gyro_angle_y);
		calc_total_ang(&gyro_angle_x, &gyro_angle_y, &acc_angle_x, &acc_angle_y, &total_angle_x, &total_angle_y);
		//xil_printf("before calc_pwm\n\r");
		calc_pwm(total_angle_x, total_angle_y, &pwm_RF, &pwm_RB, &pwm_LF, &pwm_LB, elapsed_time);
		//xil_printf("total x angle: %d \n\r", total_angle_x);
	    //xil_printf("total y angle: %d \n\r", total_angle_y);

	  usleep(10000);


  } //end while loop

    cleanup_platform();
    return 0;
}



void calc_gyro_ang(int16_t *gyro_raw_x, int16_t *gyro_raw_y, float* gyro_angle_x, float* gyro_angle_y, float* elapsed_time)
{
	static float gyro_error_x = 0.0, gyro_error_y = 0.0;
	static int i = 0, gyro_error = 0;
	static float prev_gyro = 0.0;
	//struct timeval stop, start;
	clock_t stop, start;
	//static float prev_time_us, time_us = 0;
	//Initial value for gyroscope
	float gyro_div = 131.0;

	if (gyro_error == 0)
	{
//		xil_printf("group 1\n\r");
		gyro_error_x = *gyro_raw_x/gyro_div;
		gyro_error_y = *gyro_raw_y/gyro_div;
		if (prev_gyro != *gyro_raw_y)
		{
//			xil_printf("group 2\n");
//			printf("Gyro x angle: %.2f \n", *gyro_angle_x);
//			printf("Gyro y angle: %.2f \n\r", *gyro_angle_y);
			xil_printf("i = %d \n\r", i);
			if (i<199)
			{
				prev_gyro = *gyro_raw_y;
				gyro_error_x = gyro_error_x + *gyro_raw_x/gyro_div;
				gyro_error_y = gyro_error_y + *gyro_raw_y/gyro_div;
				i++;	
			}
			else if (i == 199)
			{

				stop = clock();
				//gettimeofday(&start, NULL);
				//prev_time_us = start.tv_sec*1000000+start.tv_usec;
				gyro_error_x = (gyro_error_x + *gyro_raw_x/gyro_div)/200;
				gyro_error_y = (gyro_error_y + *gyro_raw_y/gyro_div)/200;
				gyro_error = 1;
			}
			
		}
	}
	else
	{
		if (prev_gyro != *gyro_raw_y)
		{
			prev_gyro = *gyro_raw_y;
			//gettimeofday(&start, NULL);
			start = clock();
			//printf("start time: %.2f \n", start);
			//printf("stop time: %.2f \n", stop);
			//time_us = start.tv_sec*1000000+start.tv_usec;
			//*elapsed_time = (time_us-prev_time_us)/1000000;
			//*elapsed_time = (start-stop)/1000.0;
			*elapsed_time = 0.01;
			//printf("elapsed time: %.2f \n", *elapsed_time);
			*gyro_angle_x = *gyro_angle_x + ((*gyro_raw_x/gyro_div)-gyro_error_x)*(*elapsed_time);
			*gyro_angle_y = *gyro_angle_y + ((*gyro_raw_y/gyro_div)-gyro_error_y)*(*elapsed_time);
			stop = start;
//			printf("gyro x: %d \n", *gyro_raw_x);
//			printf("gyro y: %d \n", *gyro_raw_y);
//			printf("Gyro x raw/div: %.2f \n", *gyro_raw_x/gyro_div);
//			printf("Gyro y raw/div: %.2f \n", *gyro_raw_y/gyro_div);
////			xil_printf("gyro_div: %d \n\r", 131);
//			printf("Gyro error x: %.2f \n", gyro_error_x);
//			printf("Gyro error y: %.2f \n", gyro_error_y);
			printf("In Gyro-Angle function:\nGyro x angle: %.2f \n", *gyro_angle_x);
			printf("Gyro y angle: %.2f \n\r", *gyro_angle_y);
		}

	}
	
}

void calc_acc_ang(int16_t *acc_raw_x, int16_t *acc_raw_y, int16_t *acc_raw_z, float* acc_angle_x, float* acc_angle_y)
{
	static float acc_error_x = 0.0, acc_error_y = 0.0;
	static int i = 0, acc_error = 0;
	static float prev_acc = 0.0;
	//Initial value for accelerometer
	float acc_div = 16384.0;
	float test = 5.8;

	if (acc_error == 0)
	{
		acc_error_x = *acc_raw_x/acc_div;
		acc_error_y = *acc_raw_y/acc_div;
//		printf("*acc_raw_x: %d \n", *acc_raw_x);
//		printf("acc_error x: %.2f \n", test);
//		printf("acc_error x: %.2f \n", acc_error_x);
//		printf("acc_error y: %.2f \n", acc_error_y);
//		printf("acc_div %.2f \n", acc_div);
		if (prev_acc != *acc_raw_z)
		{
			prev_acc = *acc_raw_z;
			acc_error_x = acc_error_x + (atan((*acc_raw_y)/sqrt(*acc_raw_x*(*acc_raw_x) + *acc_raw_z*(*acc_raw_z)))*(180/PI));
			acc_error_y = acc_error_y + (atan((*acc_raw_x)/sqrt(*acc_raw_y*(*acc_raw_y) + *acc_raw_z*(*acc_raw_z)))*(180/PI));
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
		if (prev_acc != *acc_raw_y)
		{
			prev_acc = *acc_raw_y;
			*acc_angle_x = (atan((*acc_raw_y)/sqrt(*acc_raw_x*(*acc_raw_x) + *acc_raw_z*(*acc_raw_z)))*(180/PI)) - acc_error_x;
			*acc_angle_y = (atan((*acc_raw_x)/sqrt(*acc_raw_y*(*acc_raw_y) + *acc_raw_z*(*acc_raw_z)))*(180/PI)) - acc_error_y;
			printf("Inside acc function:\nacc_error_x: %.2f \n", acc_error_x);
			printf("acc_error_y: %2f \n\r", acc_error_y);
			//printf("acc x angle: %.3f \n", *acc_angle_x);
//			printf("acc y angle: %.3f \n\r", *acc_angle_y);
		}
	}
	
}

void calc_total_ang(float *gyro_angle_x, float *gyro_angle_y, float *acc_angle_x, float *acc_angle_y, float* total_angle_x, float* total_angle_y)
{
	printf("Gyro x angle: %.2f \n", *gyro_angle_x);
	printf("Gyro y angle: %.2f \n", *gyro_angle_y);
	printf("acc x angle: %.3f \n", *acc_angle_x);
	printf("acc y angle: %.3f \n", *acc_angle_y);
	printf("total x angle: %.3f \n", *total_angle_x);
	printf("total y angle: %.3f \n", *total_angle_y);
	*total_angle_x = 0.98 *(*total_angle_x + *gyro_angle_x) + 0.02*(*acc_angle_x);
	*total_angle_y = 0.98 *(*total_angle_y + *gyro_angle_y) + 0.02*(*acc_angle_y);
    printf("After Calculation:\ntotal x angle: %.3f \n", *total_angle_x);
    printf("total y angle: %.3f \n\r", *total_angle_y);
}

void calc_pwm(int16_t total_angle_x, int16_t total_angle_y, float* pwm_RF, float* pwm_RB, float* pwm_LF, float* pwm_LB, float elapsed_time)
{
	//xil_printf("group 1\n\r");
	static float roll_error = 0.0, pitch_error = 0.0, roll_previous_error = 0.0, pitch_previous_error = 0.0;
	static float roll_pid_p = 0.0, pitch_pid_p = 0.0, roll_pid_i = 0.0, pitch_pid_i = 0.0, roll_pid_d = 0.0, pitch_pid_d = 0.0, roll_PID = 0.0, pitch_PID = 0.0;

	//xil_printf("group 2\n\r");
	roll_previous_error = roll_error;
	pitch_previous_error = pitch_error;
	roll_error = total_angle_y - 0;
    pitch_error = total_angle_x - 0;

    //xil_printf("group 3\n\r");
	roll_pid_p = kp*roll_error;
    pitch_pid_p = kp*pitch_error; 

    //xil_printf("group 4\n\r");
	roll_pid_i = roll_pid_i+(ki*roll_error);
	pitch_pid_i = pitch_pid_i+(ki*pitch_error);

	//xil_printf("group 5\n\r");
	roll_pid_d = kd*((roll_error - roll_previous_error)/elapsed_time);
	pitch_pid_d = kd*((pitch_error - pitch_previous_error)/elapsed_time);

//	xil_printf("group 6\n\r");
	roll_PID = roll_pid_p + roll_pid_i + roll_pid_d;
    pitch_PID = pitch_pid_p + pitch_pid_i + pitch_pid_d;

//    xil_printf("group 7\n\r");
//	*pwm_RF = -roll_PID - pitch_PID;
//	*pwm_RB = -roll_PID + pitch_PID;
//	*pwm_LF = roll_PID - pitch_PID;
//	*pwm_LB = roll_PID + pitch_PID;
//
//	xil_printf("in calc_pwm before ifs\n\r");
//	if(*pwm_RF < 0){*pwm_RF = 0;}
//	if(*pwm_RB < 0){*pwm_RB = 0;}
//	if(*pwm_LF < 0){*pwm_LF = 0;}
//	if(*pwm_LB < 0){*pwm_LB = 0;}
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

