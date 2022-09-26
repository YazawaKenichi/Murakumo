#include <defs.h>

uint8_t rotary_read() {
	uint8_t _rotaryvalue = 0;
	_rotaryvalue += (HAL_GPIO_ReadPin(GPIOC, GPIO_PIN_12)) ? 0 : 1;	// Rotary1
	_rotaryvalue += (HAL_GPIO_ReadPin(GPIOC, GPIO_PIN_10)) ? 0 : 1;	// Rotary2
	_rotaryvalue += (HAL_GPIO_ReadPin(GPIOA, GPIO_PIN_12)) ? 0 : 1;	// Rotary4
	_rotaryvalue += (HAL_GPIO_ReadPin(GPIOC, GPIO_PIN_11)) ? 0 : 1;	// Rotary8
	return _rotaryvalue;
}

#if USE_LED
void led_rgb(char r, char g, char b) {
	HAL_GPIO_WritePin(GPIOA, GPIO_PIN_11, (r) ? GPIO_PIN_RESET : GPIO_PIN_SET);	// LED_R ON
	HAL_GPIO_WritePin(GPIOA, GPIO_PIN_10, (g) ? GPIO_PIN_RESET : GPIO_PIN_SET);	// LED_G ON
	HAL_GPIO_WritePin(GPIOC, GPIO_PIN_9, (b) ? GPIO_PIN_RESET : GPIO_PIN_SET);// LED_B ON
}
void set_led(char mask, char value)
{
	if(mask & 0b01)
	{
		HAL_GPIO_WritePin(GPIOC, GPIO_PIN_8, (value & 0b01) ? GPIO_PIN_RESET : GPIO_PIN_SET);	// RIGHT
	}
	if(mask & 0b10)
	{
		HAL_GPIO_WritePin(GPIOB, GPIO_PIN_13, (value & 0b10) ? GPIO_PIN_RESET : GPIO_PIN_SET);	// LEFT
	}
}
#endif

void d_print() {
	printf("////////// d_print //////////\r\n");

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

#if D_IMU
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
double low_pass_filter(double val, double pre_val, double gamma) {
	return (double)(gamma * (double)pre_val + (double)(1 - gamma) * (double)val);
}

void HAL_ADC_ConvCpltCallback(ADC_HandleTypeDef *AdcHandle) {
	// sort
	if (sensgettime >= SENSGETCOUNT) {
		sensgettime = 0;
		for (unsigned char index = 0; index < CALIBRATIONSIZE; index++) {
			for (unsigned char count = 0; count < SENSGETCOUNT; count++) {
				for (unsigned char alphaindex = 0; alphaindex > count;
						alphaindex--) {
					uint16_t analogbuffer = analogbuffers[alphaindex - 1][index];
					analogbuffers[alphaindex - 1][index] =
							analogbuffers[alphaindex][index];
					analogbuffers[alphaindex][index] = analogbuffer;
				}
			}
			analog[index] = analogbuffers[(int) SENSGETCOUNT / 2][index];
			// get maxvalue and minimumvalue
			uint16_t analogbuf;
			analogbuf = analog[index];
			analogmax[index] =
					(analogmax[index] < analogbuf) ?
							analogbuf : analogmax[index];
			analogmin[index] =
					(analogmin[index] > analogbuf) ?
							analogbuf : analogmin[index];
		}
	}
	// sensorget
	for (unsigned char index = 0; CALIBRATIONSIZE > index; index++) {
		analogbuffers[sensgettime][index] = analograw[index];
	}
	sensgettime++;
}

#ifndef __OBSOLETE_MATH
double pow(double a, double b) {
	double r;
	r = 1;
	// printf("pow(%5.3f, %5.3f)\r\n", a, b);
	if(b < 0)
	{
		for(int i = -b; i > 0; i--) // xx b != int xx
		{
			r = (double) r / a;
		}
	}
	else
	{
		for(int i = b; i > 0; i--)
		{
			r = (double) r * a;
		}
	}

	return r;
}

double exp(double a)
{
	// printf("exponential(%5.3f)\r\n", a);
	return pow(E, a);
}
#endif

double sigmoid(double x, double a, double x0)
{
	// printf("pow(%5.3f, %5.3f, %5.3f)\r\n", x, a, x0);
	return 1 / (double) (1 + exp(-a * (x - x0)));
}

#if USE_FLASH
void eraseFlash(void) {
	FLASH_EraseInitTypeDef erase;
	erase.TypeErase = FLASH_TYPEERASE_SECTORS;
	erase.Sector = FLASH_SECTOR_11;
	erase.NbSectors = 1;
	erase.VoltageRange = FLASH_VOLTAGE_RANGE_3;
	uint32_t pageError = 0;

	HAL_FLASHEx_Erase(&erase, &pageError);
}

void writeFlash(uint32_t address, uint8_t *data, uint32_t size) {
	HAL_FLASH_Unlock();
	eraseFlash();

	for (uint32_t add = address; add < (address + size); add++) {
		HAL_FLASH_Program(FLASH_TYPEPROGRAM_BYTE, add, *data);
		data++;
	}

	HAL_FLASH_Lock();
}

void loadFlash(uint32_t address, uint8_t *data, uint32_t size) {
	memcpy(data, (uint64_t*) address, size);
}
#endif
