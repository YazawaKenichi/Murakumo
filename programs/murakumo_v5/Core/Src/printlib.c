#include "printlib.h"

void playmode_print()
{
#if D_PLAYMODE
	printf("playmode = ");
	switch(playmode)
	{
		case calibration:
			printf("calibration\r\n");
			break;
		case search:
			printf("search\r\n");
			break;
		case accel:
			printf("accel\r\n");
			break;
		case pid_tuning:
			printf("pid_tuning\r\n");
			break;
		case zero_trace:
			printf("zero_trace\r\n");
			break;
		case flash_print:
			printf("flash_print\r\n");
		default:
			printf("unknown;;\r\n");
			break;
	}
	#endif
}

void d_print()
{
	printf("////////// d_print //////////\r\n");

#if D_PLAYMODE
	playmode_print();
#endif

#if D_ANALOG || D_ANALOGRATE
#if CALIBRATIONSIZE != 16
#if (CALIBRATIONSIZE == 4)
	printf(ESC_DEF);
#endif
#if CALIBRATIONSIZE == 12
	printf(ESC_RED);
#endif
#else
	printf(ESC_DEF);
#endif

#if !D_ANALOGRATE
	// only use normal sensor
	printf("\x1b[23C");	// Cursor move right *24
	printf("%4d, %4d | %4d, %4d\r\n", analog[12], analog[14], analog[15],
			analog[13]);
#else
	printf("\x1b[23C");	// Cursor move right *24
	printf("%4d, %4d | %4d, %4d\r\n", analograte[12], analograte[14], analograte[15],
			analograte[13]);
#endif	// D_ANALOGRATE

#if CALIBRATIONSIZE == 4
	printf(ESC_RED);
#endif
#if (CALIBRATIONSIZE == 12)
	printf(ESC_DEF);
#endif

#if !D_ANALOGRATE
	printf("%4d, %4d, %4d, %4d, %4d, %4d | %4d, %4d, %4d, %4d, %4d, %4d\r\n",
			analog[0], analog[2], analog[4], analog[6], analog[8], analog[10],
			analog[11], analog[9], analog[7], analog[5], analog[3],
			analog[1]);
#else
	printf("%4d, %4d, %4d, %4d, %4d, %4d | %4d, %4d, %4d, %4d, %4d, %4d\r\n",
			analograte[0], analograte[2], analograte[4], analograte[6], analograte[8], analograte[10],
			analograte[11], analograte[9], analograte[7], analograte[5], analograte[3],
			analograte[1]);
#endif	// D_ANALOGRATE
	printf("\r\n");

#endif	// D_ANALOG

#if D_ENCODER
	printf("encoder_l = %d, encoder_r = %d \r\n",
			encoder_l, encoder_r);
/*
	printf("encoder_l = %d, encoder_r = %d \r\ndvl = %d, dvr = %d\r\n",
			encoder_l, encoder_r, dvl, dvr);
	printf("lengthl = %d, lengthr = %d \r\nvelocityl = %d, velocityr = %d\r\n",
			lengthl, lengthr, velocityl, velocityr);
*/
	/*
	printf("TIM1->CNT = %5d, TIM3->CNT = %5d\r\nencoder_l = %5d, encoder_r = %5d\r\n", TIM1->CNT, TIM3->CNT, encoder_l, encoder_r);
	*/

	printf("encoder_lr = %7d, %7d\r\nencoder = %7d\r\ns_encoder = %7d\r\ns_velocity = %7.3f\r\n", encoder_l, encoder_r, encoder, s_encoder, s_velocity);
#endif

#if D_SLOWSTART
	printf("slow = %1d\r\n", slow);
	printf("starting_length = %5f\r\n", starting_length);
#endif

#if D_PWM
//	printf("pwmstepoutput = %5d, pwmsteptime = %5d, pwmstepud = %d\r\n", pwmstepoutput, pwmsteptime, pwmstepud);
#endif

#if D_ROTARY
	printf("rotary_value = %x\r\n", rotary_value);
#endif

#if D_SWITCH
	printf("enter = %d\r\n", enter);
#endif

#if D_FLASH
	printf("rightmarkercount = %1d\r\n", rightmarkercount);
	printf("sampling_length = %5f\r\n", mm_length);
	printf("sampling_time = %5d\r\n", sampling_time);
	printf("course_state_time = %4d\r\n", course_state_time);

#if D_IMU
	printf("mm_length = %5.3f\r\n", mm_length);
	printf("inertial.gyro.z = %5d, my_gyro.z = %7.3f\r\n", inertial.gyro.z, my_gyro.z);
	printf("my_gyro.z / mm_length = %8.5f\r\n", (double) my_gyro.z / (double) mm_length);
#endif

#if !D_COURSE_SAVING
	printf("flash_buffer.radius[%4d] = %8.3f\r\n", course_state_time,
			flash_buffer.radius[course_state_time]);
#endif
#endif

#if D_VELOCITY_CONTROL
	#if !VELOCITY_CONTROL_RELATIVE
		printf("velocity_error = %5.3f, s_velocity_error = %5.3f\r\n",
				velocity_error_l, s_velocity_error_l);
		printf("velocity_next = %5.3f\r\n", velocity_next_l);
		printf("nextspeed = %5.3f\r\n", nextspeed_l);
		printf("leftmotor = %5.3f, rightmotor = %5.3f\r\n", leftmotor, rightmotor);
	#else	// VELOCITY_CONTROL_RELATIVE
		#if !D_VELOCITY_CONTROL_TIMER
		//	printf("LENGTHPERPULSE = %5.3f\r\n", LENGTHPERPULSE);
		/*
			printf("encoder = %3.1f\r\nLENGTHPERPULSE = %f\r\nvelocity = %5.3f\r\nvelocity_error = %5.3f, s_velocity_error = %5.3f\r\nvelocity_next = %5.3f\r\nnextspeed = %5.3f\r\n",
					(encoder_l + encoder_r) / (double)2.0f, LENGTHPERPULSE, velocity, velocity_error, s_velocity_error, velocity_next);
		*/
		#else	// D_VELOCITY_CONTROL_TIMER
			printf("rightmarkercount = %1d\r\n", rightmarkercount);
			printf("stoptime = %11lf\r\n", stoptime);
		#endif	// D_VELOCITY_CONTROL_TIMER
	#endif	// VELOCITY_CONTROL_RELARIVE
#endif	// D_VELOCITY_CONTROL

#if D_MOTOR
	printf("leftmotor = %5.3f, rightmotor = %5.3f\r\n", leftmotor, rightmotor);
#endif

#if D_MATH
#if USE_SIGMOID_TRACE
	for(int i = 0; i < calibrationsize; i++)
	{
		printf("sigmoid = %5.3f\r\n", 1000 * sigmoid(analograte[i], (16 - i)/(double)800, 500));
	}
#endif
#endif

}	// d_print

PUTCHAR_PROTOTYPE
{
	HAL_UART_Transmit(&huart6, (uint8_t*) &ch, 1, 0xFFFF);
	return ch;
}
