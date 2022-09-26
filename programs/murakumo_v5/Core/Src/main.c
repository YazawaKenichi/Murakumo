/* USER CODE BEGIN Header */
/**
 ******************************************************************************
 * @file           : main.c
 * @brief          : Main program body
 ******************************************************************************
 * @attention
 *
 * <h2><center>&copy; Copyright (c) 2022 STMicroelectronics.
 * All rights reserved.</center></h2>
 *
 * This software component is licensed by ST under BSD 3-Clause license,
 * the "License"; You may not use this file except in compliance with the
 * License. You may obtain a copy of the License at:
 *                        opensource.org/licenses/BSD-3-Clause
 *
 * 
* 8b    d8 88   88 88""Yb    db    88  dP 88   88 8b    d8  dP"Yb             Yb    dP 888888 *
* 88b  d88 88   88 88__dP   dPYb   88odP  88   88 88b  d88 dP   Yb             Yb  dP  88oo." *
* 88YbdP88 Y8   8P 88"Yb   dP__Yb  88"Yb  Y8   8P 88YbdP88 Yb   dP              YbdP      `8b *
* 88 YY 88 `YbodP' 88  Yb dP""""Yb 88  Yb `YbodP' 88 YY 88  YbodP  oooooooooo    YP    8888P' *
 *
 ********************************************dsd**********************************
 */
/* USER CODE END Header */
/* Includes ------------------------------------------------------------------*/
#include "main.h"

/* Private includes ----------------------------------------------------------*/
/* USER CODE BEGIN Includes */
#include <defs.h>

/* USER CODE END Includes */

/* Private typedef -----------------------------------------------------------*/
/* USER CODE BEGIN PTD */

/* USER CODE END PTD */

/* Private define ------------------------------------------------------------*/
/* USER CODE BEGIN PD */
/* USER CODE END PD */

/* Private macro -------------------------------------------------------------*/
/* USER CODE BEGIN PM */
/* USER CODE END PM */

/* Private variables ---------------------------------------------------------*/
ADC_HandleTypeDef hadc1;
DMA_HandleTypeDef hdma_adc1;

I2C_HandleTypeDef hi2c1;

SPI_HandleTypeDef hspi2;

TIM_HandleTypeDef htim1;
TIM_HandleTypeDef htim3;
TIM_HandleTypeDef htim4;
TIM_HandleTypeDef htim6;
TIM_HandleTypeDef htim10;
TIM_HandleTypeDef htim11;

UART_HandleTypeDef huart6;

/* USER CODE BEGIN PV */
/* USER CODE END PV */

/* Private function prototypes -----------------------------------------------*/
void SystemClock_Config(void);
static void MX_GPIO_Init(void);
static void MX_DMA_Init(void);
static void MX_ADC1_Init(void);
static void MX_USART6_UART_Init(void);
static void MX_TIM6_Init(void);
static void MX_TIM4_Init(void);
static void MX_TIM1_Init(void);
static void MX_TIM3_Init(void);
static void MX_TIM10_Init(void);
static void MX_TIM11_Init(void);
static void MX_SPI2_Init(void);
static void MX_I2C1_Init(void);
/* USER CODE BEGIN PFP */

void HAL_TIM_PeriodElapsedCallback(TIM_HandleTypeDef *htim)
{
	if (htim->Instance == TIM6)
	{	// 1 ms
#if D_VELOCITY_CONTROL_TIMER && USE_VELOCITY_CONTROL
		if(rightmarkercount >= 1)
		{
			if(stoptime < STOPTIME)
			{
				stoptime += 1;	// 1 ms / roop
			}
			else
			{
				motorenable = 0;
			}
		}
#endif // D_VELOCITY_CONTROL_TIMER && USE_VELOCITY_CONTROL
		if (motorenable) {
#if USE_ANALOG
			analogl = 0;
			analogr = 0;
			for(unsigned char i = 0; i < calibrationsize; i++)
			{
				analograte[i] = ((analog[i] - analogmin[i]) * 1000) / (analogmax[i] - analogmin[i]);
#if USE_SIGMOID_TRACE
				analograte[i] = 1000 * sigmoid(analograte[i], (16 - i)/(double)800, 500);
#endif

				if(i % 2 == 0)
				{
				  analogl += analograte[i];
				}
				else
				{
				  analogr += analograte[i];
				}
			}

			if(analogl + analogr >= 980 * calibrationsize)
			{
				velocity_target = 0;
				motorenable = 0;
				enter = 0;
			}

			// ( direction > 0 ) is ( analogl > analogr ) i.e. left is black, right is white.
			// When ( direction > 0 ) , must turn right.
			direction = (analogl - analogr);	// difference
			sdirection = sdirection + direction;	// Integral

			if(analogl + analogr <= 700 * calibrationsize)
			{
				direction = 0;
			}
#if !VELOCITY_CONTROL_RELATIVE
			// left
			leftmotor = nextspeed_l + (kp * direction + kd * (direction - beforedirection)) / calibrationsize / 2;
			rightmotor = nextspeed_r - (kp * direction + kd * (direction - beforedirection)) / calibrationsize / 2;
#else	// VELOCITY_CONTROL_RELATIVE
			leftmotor = commonspeed + (kp * direction + kd * (direction - beforedirection) + ki * sdirection) / calibrationsize / 2;
			rightmotor = commonspeed - (kp * direction + kd * (direction - beforedirection) + ki * sdirection) / calibrationsize / 2;
#endif	// VELOCITY_CONTROL_RELAT
#endif	// USE_ANALOG
#if !USE_ANALOG && USE_VELOCITY_CONTROL
#if !VELOCITY_CONTROL_RELATIVE
			leftmotor = nextspeed_l;
			rightmotor = nextspeed_r;
#else
			leftmotor = commonspeed;
			rightmotor = commonspeed;
#endif
#endif	// !USE_ANALOG
#if USE_ANALOG
			beforedirection = direction;
#endif	// USE_ANALOG
#if STATICMOTORPWM	// !STATICMOTORPWM
			leftmotor = COMMONSPEED1;
			rightmotor = COMMONSPEED1;
#endif	// !STATICMOTORPWM
		} else	// if(motorenable)
		{
			leftmotor = 0;
			rightmotor = 0;
		}
#if USE_MOTOR

		if (leftmotor < 0) {
			HAL_GPIO_WritePin(GPIOD, GPIO_PIN_2, GPIO_PIN_RESET);
			leftmotor = leftmotor * -1;
		} else {
			HAL_GPIO_WritePin(GPIOD, GPIO_PIN_2, GPIO_PIN_SET);
		}

		if (rightmotor < 0) {
			HAL_GPIO_WritePin(GPIOC, GPIO_PIN_13, GPIO_PIN_SET);
			rightmotor = rightmotor * -1;
		} else {
			HAL_GPIO_WritePin(GPIOC, GPIO_PIN_13, GPIO_PIN_RESET);
		}

		leftmotor = leftmotor > PWMMAX ? PWMMAX : leftmotor;
		rightmotor = rightmotor > PWMMAX ? PWMMAX : rightmotor;
#endif

#if !D_PWM
#if USE_MOTOR
		__HAL_TIM_SET_COMPARE(&htim4, TIM_CHANNEL_1, leftmotor);
		__HAL_TIM_SET_COMPARE(&htim4, TIM_CHANNEL_2, rightmotor);
#endif
#else
#if !STATICPWM
		if(HAL_GPIO_ReadPin(GPIOC, GPIO_PIN_14))	// SW1
		{
			pwmstepoutput = PWM_STEP_OMEGA * pwmsteptime / 1000;
			HAL_GPIO_WritePin(GPIOD, GPIO_PIN_2, GPIO_PIN_RESET); HAL_GPIO_WritePin(GPIOC, GPIO_PIN_13, GPIO_PIN_SET); __HAL_TIM_SET_COMPARE(&htim4, TIM_CHANNEL_1, pwmstepoutput); __HAL_TIM_SET_COMPARE(&htim4, TIM_CHANNEL_2, pwmstepoutput); pwmstepud = (PWM_STEP_AMPLITUDE <= pwmstepoutput) ? 255 : (0 >= pwmstepoutput) ? 1 : pwmstepud; pwmsteptime = (pwmstepud == 255) ? pwmsteptime - 1 : pwmsteptime + 1;
		}
#else	// !STATICPWM
		HAL_GPIO_WritePin(GPIOD, GPIO_PIN_2, GPIO_PIN_SET);
		HAL_GPIO_WritePin(GPIOC, GPIO_PIN_13, GPIO_PIN_RESET);
		__HAL_TIM_SET_COMPARE(&htim4, TIM_CHANNEL_1, COMMONSPEED1);
		__HAL_TIM_SET_COMPARE(&htim4, TIM_CHANNEL_2, COMMONSPEED1);
#endif	// STATICPWM
#endif	// D_PWM
	}	// TIM6
	if (htim->Instance == TIM10)	// TIM10 // 1ms
	{
#if USE_SIDESENSOR
		unsigned char subsens, first, second;

		subsens = !HAL_GPIO_ReadPin(GPIOB, GPIO_PIN_2) ? 1 : 0; // right
		subsens += !HAL_GPIO_ReadPin(GPIOB, GPIO_PIN_11) ? 2 : 0; // left

		if (subsens != subsensbuf) {
			subsensbuf = subsens;
			marker += subsens << (2 * sidedeltacount);
			if (subsens == 0b00 && sidedeltacount != 0) {
				first = (marker & 0b0011);
				second = (marker & 0b1100) >> 2;
				if (second == 0b00) {
					if (first == 0b01) {
						// right -> stop
						markerstate = 0b01;
						if (rightmarkercount == 0)
						{
							rightmarkercount++;
							set_led(0b01, 0b01);
						}
						else if (rightmarkercount == 1)
						{
							enter = 0;
#if USE_FLASH
							flash_buffer.radius[course_state_time] = THRESHOLDRADIUS;
							flash_buffer.course_state_time_max = course_state_time;
#endif
						}
					} else if (first == 0b10) {
						// left -> curve
						markerstate = 0b10;
#if USE_ANALOG
						sdirection = 0;
#endif
#if USE_FLASH && USE_VELOCITY_CONTROL
#if BASED_ON_LEFT_MAARKER
						if(!(playmode == pid_tuning || playmode == zero_trace))
						{
							switch(rv)	// in TIM10
							{
								case 0x01:
									flash_buffer.radius[course_state_time] = (TREAD / 2) * (s_velocity_l + s_velocity_r) / (s_velocity_l - s_velocity_r);
									course_state_time++;
									break;
								case 0x02:
									course_state_time++;
									if(TURNIF)
									{
										velocity_target = VELOCITY_TARGET2;
										kp = KP2;
										kd = KD2;
										ki = KI2;
									}
									else
									{
										velocity_target = VELOCITY_TARGET1;
										kp = KP1;
										kd = KD1;
										ki = KI1;
									}
									break;
								case 0x03:
									course_state_time++;
									if(TURNIF)
									{
										velocity_target = VELOCITY_TARGET2;
										kp = KP2 * 1.2f * 1.2f;
										kd = KD2 * 1.2f * 1.2f;
										ki = KI2 * 1.2f * 1.2f;
									}
									else
									{
										velocity_target = VELOCITY_TARGET1;
										kp = KP1;
										kd = KD1;
										ki = KI1;
									}
									break;
								case 0x04:
									course_state_time++;
									if(TURNIF)
									{
										velocity_target = VELOCITY_TARGET3;
										kp = KP3 * 1.2f * 1.2f;
										kd = KD3 * 1.2f * 1.2f;
										ki = KI3 * 1.2f * 1.2f;
									}
									else
									{
										velocity_target = VELOCITY_TARGET1;
										kp = KP1;
										kd = KD1;
										ki = KI1;
									}
									break;
								default:
									break;
							}
						}	// !(playmode == pid_tuning || playmode == zero_trace)
#endif	// BASED_ON_LEFT_MARKER
#if USE_VELOCITY_CONTROL
						s_velocity = 0;
#endif
						if (course_state_time >= COURSE_STATE_SIZE)
						{
							course_state_time = 0;
							enter = 0;
						}
#endif	// USE_FLASH && USE_VELOCITY_CONTROL
					} else {
						// cross
						markerstate = 0b11;
					}
				} else {
					// cross
					markerstate = 0b11;
				}
				sidedeltacount = 0;
				marker = 0;
				markerstate = 0;
			} else {
				sidedeltacount++;
			}
		}
#endif	// USE_SIDESENSOR

#if USE_ENCODER
		// 1ms
		encoder_l = TIM1->CNT - ENCODER_MIDDLE;
		encoder_r = -(TIM3->CNT - ENCODER_MIDDLE);

		TIM1->CNT = ENCODER_MIDDLE;
		TIM3->CNT = ENCODER_MIDDLE;

		// error = target - raw
		// motor = commonspeed + KP * error - KD * d_error + KI * s_error

		encoder = (double) (encoder_l + encoder_r) / 2;
		velocity = (double) encoder * LENGTHPERPULSE;

#if D_ENCODER
		s_encoder_l += encoder_l;
		s_encoder_r += encoder_r;
		s_encoder += encoder;
		s_velocity += velocity;
#endif

#if USE_MOTOR
#if USE_SLOWSTART
		if(slow)
		{
			starting_length += velocity;
			if(starting_length < THRESHOLD_STARTING_LENGTH)
			{
				velocity_target = 100;
				kp = 10;
				kd = 15;
				ki = 0;
			}
			else
			{
				velocity_target = base_velocity_target;
				kp = base_p;
				ki = base_i;
				kd = base_d;
				slow = 0;
			}
		}
#endif
#endif

#if USE_VELOCITY_CONTROL
#if !VELOCITY_CONTROL_RELATIVE
		velocity_error_l = VELOCITY_TARGET - velocity_l;
		s_velocity_error_l = s_velocity_error_l + velocity_error_l;
		// PI
		velocity_next_l = VKPL * velocity_error_l + VKIL * s_velocity_error_l;
		nextspeed_l = (VELOCITY_TARGET + velocity_next_l) * PWMMAX / VELOCITY_MAX;

		// right
		velocity_r_raw = encoder_r * LENGTHPERPULSE;
		velocity_r = low_pass_filter(velocity_r_raw, velocity_r, 0.1);
		// Here VELOCITY_TARGET is array from Flash ROM.
		velocity_error_r = VELOCITY_TARGET - velocity_r;
		s_velocity_error_r = s_velocity_error_r + velocity_error_r;
		// PI
		velocity_next_r = VKPR * velocity_error_r + VKIR * s_velocity_error_r;
		nextspeed_r = (VELOCITY_TARGET + velocity_next_r) * PWMMAX / VELOCITY_MAX;
#else	// VELOCITY_CONTROL_RELATIVE
		// Here VELOCITY_TARGET is array from Flash ROM.
		if(playmode != zero_trace)
		{
			velocity_error = velocity_target - velocity;
			s_velocity_error = s_velocity_error + velocity_error;
			// PI
			velocity_next = (double)VKP * velocity_error + (double)VKI * s_velocity_error;
			commonspeed = (double)velocity_next * (double)PWMMAX / (double)VELOCITY_MAX;
		}
		else
		{
			commonspeed = 0;
		}

#if USE_FLASH
		if(rv == 0x01)
		{
			s_velocity = velocity;
		}
#endif
#endif	// VELOCITY_CONTROL_RELATIVE
#endif	// USE_VELOCITY_CONTROL
#endif	// USE_ENCODER
#if USE_LED
		uint16_t TIMTIM = 1000;

		if(timtim1 % TIMTIM == 0)	// 1 ms / roop
		{
			set_led(0b10, 0b10);
		}
		if(timtim1 % TIMTIM == (int) (TIMTIM / 2))
		{
			set_led(0b10, 0b00);
		}
		timtim1 = timtim1 + 1;
		if(timtim1 >= 60000)
		{
			timtim1 = 0;
		}
#endif
	}	// TIM10

	if (htim->Instance == TIM11)	// TIM11 // 1ms
	{
		uint8_t rotary_value_row;
		rotary_value_row = (!HAL_GPIO_ReadPin(GPIOC, GPIO_PIN_12)) ? 1 : 0;
		rotary_value_row += (!HAL_GPIO_ReadPin(GPIOC, GPIO_PIN_10)) ? 2 : 0;
		rotary_value_row += (!HAL_GPIO_ReadPin(GPIOA, GPIO_PIN_12)) ? 4 : 0;
		rotary_value_row += (!HAL_GPIO_ReadPin(GPIOC, GPIO_PIN_11)) ? 8 : 0;
		rotary_value = rotary_value_row;

#if USE_BUZZER
		__HAL_TIM_SET_COMPARE(&htim2, TIM_CHANNEL_1, 1406 * rotary_value_row / 16);
#endif

		if (!HAL_GPIO_ReadPin(GPIOC, GPIO_PIN_14)
				&& HAL_GPIO_ReadPin(GPIOC, GPIO_PIN_15)) {
			enter = 1;
		}
		if (HAL_GPIO_ReadPin(GPIOC, GPIO_PIN_14)
				&& !HAL_GPIO_ReadPin(GPIOC, GPIO_PIN_15)) {
			enter = 0;
		}
	}
}

/* USER CODE END PFP */

/* Private user code ---------------------------------------------------------*/
/* USER CODE BEGIN 0 */

/* USER CODE END 0 */

/**
  * @brief  The application entry point.
  * @retval int
  */
int main(void)
{
  /* USER CODE BEGIN 1 */

  /* USER CODE END 1 */

  /* MCU Configuration--------------------------------------------------------*/

  /* Reset of all peripherals, Initializes the Flash interface and the Systick. */
  HAL_Init();

  /* USER CODE BEGIN Init */
#if USE_LED
  set_led(0b11, 0b00);
#endif

	enter = 0;
	motorenable = 0;
	rotary_value = 0;
	rv = 0;
	LENGTHPERPULSE = M_PI * TIREDIAMETER * PINION / (double) PULSEPERROTATE / (double) SUPER;
	commonspeed = 0;
	calibrationsize = CALIBRATIONSIZE;
#if D_PWM
	pwmsteptime = 0;
	pwmstepud = 1;
#endif

#if USE_FLASH
	printf("Load Flash\r\n");
	loadFlash(start_address, (uint8_t*) &flash_buffer,
			sizeof(FlashBuffer));
#endif

	for (unsigned char i = 0; CALIBRATIONSIZE > i; i++) {
		analogmax[i] = 0;
		analogmin[i] = 4096;
	}

  /* USER CODE END Init */

  /* Configure the system clock */
  SystemClock_Config();

  /* USER CODE BEGIN SysInit */

  /* USER CODE END SysInit */

  /* Initialize all configured peripherals */
  MX_GPIO_Init();
  MX_DMA_Init();
  MX_ADC1_Init();
  MX_USART6_UART_Init();
  MX_TIM6_Init();
  MX_TIM4_Init();
  MX_TIM1_Init();
  MX_TIM3_Init();
  MX_TIM10_Init();
  MX_TIM11_Init();
  MX_SPI2_Init();
  MX_I2C1_Init();
  /* USER CODE BEGIN 2 */
	printf(ESC_DEF);
	printf("\r\n\r\n\r\nStarting Program...\r\n\r\n");

	printf("Starting Analog Read\r\n");
	if (HAL_ADC_Init(&hadc1) != HAL_OK) {
		Error_Handler();
	}

	printf("Starting TIM11\r\n");
	HAL_TIM_Base_Start_IT(&htim11);	// 1ms	// ROTARY SWITCH

	playmode = (PlayMode)rotary_value;

#if D_PLAYMODE
	printf("playmode = ");
	switch(playmode)
	{
		case production:
			printf("production\r\n");
			break;
		case a_course:
			printf("a_course\r\n");
			break;
		case b_course:
			printf("b_course\r\n");
			break;
		case mini_course:
			printf("mini_course\r\n");
			break;
		case pid_tuning:
			printf("pid_tuning\r\n");
			break;
		case zero_trace:
			printf("zero_trace\r\n");
			break;
		default:
			printf("unknown;;\r\n");
			break;
	}
#endif


#if USE_BUZZER
	printf("Starting TIM2 (Buzzer)\r\n");
	if(HAL_TIM_PWM_Start(&htim2, TIM_CHANNEL_1) != HAL_OK)
	{
		Error_Handler();
	}
#endif

#if USE_IMU
	printf("Starting SPI2 (IMU)\r\n");
	uint8_t wai, ret;
	ret = IMU_init(&wai);
	printf("who_am_i = %d\r\n", wai);
	if (ret == 1) {
		printf("SPI INIT COLLECT!\r\n");
	} else {
		printf("SPI INIT FAILURE x_x \r\n");
	}
#endif

#if D_ENCODER
	printf("LENGTHPERPULSE = %f\r\n", LENGTHPERPULSE);
#endif

#if D_MATH
	printf("M_PI = %f, exp(1) = %f\r\n", M_PI, exp(1));
	printf("10 ^ (-1 / 10) = %f\r\n", pow(10, -1/(double)10));
#endif

  /* USER CODE END 2 */

  /* Infinite loop */
  /* USER CODE BEGIN WHILE */
#if USE_LED
	set_led(0b11, 0b11);
	led_rgb(1, 1, 1);	// White
#endif
#if D_LED
		HAL_TIM_Base_Start_IT(&htim6);	// PID
#endif
	while (1) {
#if !D_LED
		printf("///// WHILE /////\n\r");
#if D_SWITCH
		printf("enter = %d\r\n", enter);
#endif

#if D_ROTARY
		printf("rotary_value = %x\r\n", rotary_value);
#endif

		if (enter) {
			rv = rotary_value;
			switch (rv) {
			case 0x00:
#if USE_LED
				led_rgb(1, 1, 0);	// Yellow
#endif
				for (unsigned char i = 0; CALIBRATIONSIZE > i; i++) {
					analogmax[i] = 0;
					analogmin[i] = 4096;
				}

				sensor_initialize();

				while (enter) {
#if D_ANALOG
					printf(ESC_DEF);
					printf("////////// ANALOG //////////\r\n");
#if CALIBRATIONSIZE == 16
					printf("\x1b[23C");	// Cursor move right *24
					printf("%4d, %4d | %4d, %4d\r\n", analog[12], analog[14], analog[15],
							analog[13]);
#endif
#if CALIBRATIONSIZE >= 12
					printf("%4d, %4d, %4d, %4d, %4d, %4d | %4d, %4d, %4d, %4d, %4d, %4d\r\n",
							analog[0], analog[2], analog[4], analog[6], analog[8], analog[10],
							analog[11], analog[9], analog[7], analog[5], analog[3],
							analog[1]);
#endif
#endif
					HAL_Delay(100);
				}

				sensor_finalize();

#if D_ANALOG
				printf(ESC_YEL);
				for (unsigned char j = 0; CALIBRATIONSIZE > j; j++) {
					printf("[%2d] = ", j);
					printf("%4d,", analogmax[j]);
				}
				printf("\r\n");
				printf(ESC_CYA);
				for (unsigned char j = 0; CALIBRATIONSIZE > j; j++) {
					printf("[%2d] = ", j);
					printf("%4d,", analogmin[j]);
				}
				printf("\r\n");
				printf(ESC_DEF);
				for (unsigned char i = 0; 5 * CALIBRATIONSIZE > i; i++) {
					printf("v");
				}
				printf("\r\n");
				printf(ESC_YEL);
				for (unsigned char i = 0; i < CALIBRATIONSIZE / 2; i++) {
					printf("[%2d] = ", i * 2);
					printf("%4d, ", analogmax[i * 2]);
				}
				for (unsigned char i = CALIBRATIONSIZE / 2; i > 0; i--) {
					printf("[%2d] = ", i * 2 - 1);
					printf("%4d,", analogmax[i * 2 - 1]);
				}
				printf("\r\n");
				printf(ESC_CYA);
				for (unsigned char i = 0; i < CALIBRATIONSIZE / 2; i++) {
					printf("[%2d] = ", i * 2);
					printf("%4d, ", analogmin[i * 2]);
				}
				for (unsigned char i = CALIBRATIONSIZE / 2; i > 0; i--) {
					printf("[%2d] = ", i * 2 - 1);
					printf("%4d,", analogmin[i * 2 - 1]);
				}
				printf("\r\n");
				printf(ESC_DEF);
#endif

#if USE_FLASH
				for (unsigned char i = 0; CALIBRATIONSIZE > i; i++) {
					flash_buffer.analogmax[i] = analogmax[i];
					flash_buffer.analogmin[i] = analogmin[i];
				}

				writeFlash(start_address, (uint8_t*) &flash_buffer,
						sizeof(FlashBuffer));
#endif

				break;	// case 0x00:
			case 0x01:	// 1
				kp = KP1;
				kd = KD1;
				ki = KI1;
#if USE_VELOCITY_CONTROL
				velocity_target = VELOCITY_TARGET1;
#else
				commonspeed = COMMONSPEED1;
#endif
				running_initialize();

				while (enter) {
					d_print();
					HAL_Delay(500);
				}

				running_finalize();
#if USE_FLASH
				printf("////////// WRITE FLASH ///////////\r\n");
				writeFlash(start_address, (uint8_t*) &flash_buffer,
						sizeof(FlashBuffer));
#endif
				break;
			case 0x02:	// 2
				kp = KP2;
				kd = KD2;	// 0.8f * KD1 * VELOCITY_TARGET2 / VELOCITY_TARGET1;
				ki = KI2;	//0.8f * KI1 * VELOCITY_TARGET2 / VELOCITY_TARGET1;
#if USE_VELOCITY_CONTROL
				velocity_target = VELOCITY_TARGET2;
#else
				commonspeed = COMMONSPEED2;
#endif
				running_initialize();

				while (enter) {
					d_print();
					HAL_Delay(250);
				}

				running_finalize();
				break;
			case 0x03:	// 3
				kp = KP3;
				kd = KD3;	// 0.8f * KD1 * VELOCITY_TARGET2 / VELOCITY_TARGET1;
				ki = KI3;	//0.8f * KI1 * VELOCITY_TARGET2 / VELOCITY_TARGET1;
#if USE_VELOCITY_CONTROL
				velocity_target = VELOCITY_TARGET3;
#else
				commonspeed = COMMONSPEED3;
#endif
				running_initialize();

				while (enter) {
					d_print();
					HAL_Delay(250);
				}

				running_finalize();
				break;
			case 0x04:	// 4
				kp = KP4;
				kd = KD4;
				ki = KI4;
#if USE_VELOCITY_CONTROL
				velocity_target = VELOCITY_TARGET4;
#else
				commonspeed = COMMONSPEED4;
#endif
				running_initialize();

				while (enter) {
					d_print();
					HAL_Delay(250);
				}

				running_finalize();
				break;
			case 0x05:	// 5
				kp = KP5;
				kd = KD5;
				ki = KI5;
#if USE_VELOCITY_CONTROL
				velocity_target = VELOCITY_TARGET5;
#else
				commonspeed = COMMONSPEED5;
#endif
				running_initialize();

				while (enter) {
					d_print();
					HAL_Delay(250);
				}

				running_finalize();
				break;
			case 0x06:	// 6
				kp = KP6;
				kd = KD6;
				ki = KI6;
#if USE_VELOCITY_CONTROL
				velocity_target = VELOCITY_TARGET6;
#else
				commonspeed = COMMONSPEED6;
#endif
				running_initialize();

				while (enter) {
					d_print();
					HAL_Delay(250);
				}

				running_finalize();
				break;
			case 0x07:	// 7
				kp = KP7;
				kd = KD7;
				ki = KI7;
#if USE_VELOCITY_CONTROL
				velocity_target = VELOCITY_TARGET7;
#else
				commonspeed = COMMONSPEED7;
#endif
				running_initialize();

				while (enter) {
					d_print();
					HAL_Delay(250);
				}

				running_finalize();
				break;
			case 0x08:	// 8
				kp = KP8;
				kd = KD8;	// 0.8f * KD1 * VELOCITY_TARGET2 / VELOCITY_TARGET1;
				ki = KI8;	//0.8f * KI1 * VELOCITY_TARGET2 / VELOCITY_TARGET1;
#if USE_VELOCITY_CONTROL
				velocity_target = VELOCITY_TARGET8;
#else
				commonspeed = COMMONSPEED8;
#endif
				running_initialize();

				while (enter) {
					d_print();
					HAL_Delay(250);
				}

				running_finalize();
				break;
			case 0x09:	// 9
				kp = KP9;
				kd = KD9;
				ki = KI9;
#if USE_VELOCITY_CONTROL
				velocity_target = VELOCITY_TARGET9;
#else
				commonspeed = COMMONSPEED9;
#endif
				running_initialize();

				while (enter) {
					d_print();
					HAL_Delay(250);
				}

				running_finalize();
				break;
			case 0x0A:	// A
				kp = KPA;
				kd = KDA;
				ki = KIA;
#if USE_VELOCITY_CONTROL
				velocity_target = VELOCITY_TARGETA;
#else
				commonspeed = COMMONSPEEDA;
#endif
				running_initialize();

				while (enter) {
					d_print();
					HAL_Delay(250);
				}

				running_finalize();
				break;
			case 0x0B:	// B
				kp = KPB;
				kd = KDB;
				ki = KIB;
#if USE_VELOCITY_CONTROL
				velocity_target = VELOCITY_TARGETB;
#else
				commonspeed = COMMONSPEEDB;
#endif
				running_initialize();

				while (enter) {
					d_print();
					HAL_Delay(250);
				}

				running_finalize();
				break;
			case 0x0C:	// C
				kp = KPC;
				kd = KDC;
				ki = KIC;
#if USE_VELOCITY_CONTROL
				velocity_target = VELOCITY_TARGETC;
#else
				commonspeed = COMMONSPEEDC;
#endif
				running_initialize();

				while (enter) {
					d_print();
					HAL_Delay(250);
				}

				running_finalize();
				break;
			case 0x0D:	// D
				kp = KPD;
				kd = KDD;
				ki = KID;
#if USE_VELOCITY_CONTROL
				velocity_target = VELOCITY_TARGETD;
#else
				commonspeed = COMMONSPEEDD;
#endif
				running_initialize();

				while (enter) {
					d_print();
					HAL_Delay(250);
				}

				running_finalize();
				break;
			case 0x0E:	// E
				kp = KPE;
				kd = KDE;
				ki = KIE;
#if USE_VELOCITY_CONTROL
				velocity_target = VELOCITY_TARGETE;
#else
				commonspeed = COMMONSPEEDE;
#endif
				running_initialize();

				while (enter) {
					d_print();
					HAL_Delay(250);
				}

				running_finalize();
				break;
			case 0x0F:
				if(!(playmode == pid_tuning || playmode == zero_trace))
				{
					// load flash output
					loadFlash(start_address, (uint8_t*) &flash_buffer,
							sizeof(FlashBuffer));
					printf("////////// Radius //////////\r\n");
					for (int i = 0; i < COURSE_STATE_SIZE; i++)
					{
						printf("%3d, %6.3lf\r\n", i, flash_buffer.radius[i]);
					}
				}
				else
				{
					kp = KPF;
					kd = KDF;
					ki = KIF;
#if USE_VELOCITY_CONTROL
					velocity_target = VELOCITY_TARGETF;
#else
					commonspeed = COMMONSPEEDF;
#endif
					running_initialize();

					while (enter) {
						d_print();
						HAL_Delay(250);
					}

					running_finalize();
				}
				/*
#if USE_FLASH
				// FLASH PRINT
				FlashBuffer readrom;
				loadFlash(start_address, (uint8_t*) &readrom,
						sizeof(FlashBuffer));
#if USE_ENCODER
				printf("////////// Encorder //////////\r\n");
				for (int i = 0; i < COURSE_STATE_SIZE; i++) {
					printf("%2d, %3d, %4d, %4d\r\n", i, readrom.time[i], readrom.svl[i],
							readrom.svr[i]);
				}
#endif
#endif
				 */

				while (enter) {
					HAL_Delay(250);
				}
				break;
			default:
				break;
			} // switch(rotary_value)
		}	// if(enter)
#endif	// !D_LED
	}	// while(1)
	HAL_Delay(250);
    /* USER CODE END WHILE */

    /* USER CODE BEGIN 3 */
  /* USER CODE END 3 */
}

/**
  * @brief System Clock Configuration
  * @retval None
  */
void SystemClock_Config(void)
{
  RCC_OscInitTypeDef RCC_OscInitStruct = {0};
  RCC_ClkInitTypeDef RCC_ClkInitStruct = {0};

  /** Configure the main internal regulator output voltage
  */
  __HAL_RCC_PWR_CLK_ENABLE();
  __HAL_PWR_VOLTAGESCALING_CONFIG(PWR_REGULATOR_VOLTAGE_SCALE1);
  /** Initializes the RCC Oscillators according to the specified parameters
  * in the RCC_OscInitTypeDef structure.
  */
  RCC_OscInitStruct.OscillatorType = RCC_OSCILLATORTYPE_HSE;
  RCC_OscInitStruct.HSEState = RCC_HSE_BYPASS;
  RCC_OscInitStruct.PLL.PLLState = RCC_PLL_ON;
  RCC_OscInitStruct.PLL.PLLSource = RCC_PLLSOURCE_HSE;
  RCC_OscInitStruct.PLL.PLLM = 8;
  RCC_OscInitStruct.PLL.PLLN = 168;
  RCC_OscInitStruct.PLL.PLLP = RCC_PLLP_DIV2;
  RCC_OscInitStruct.PLL.PLLQ = 4;
  if (HAL_RCC_OscConfig(&RCC_OscInitStruct) != HAL_OK)
  {
    Error_Handler();
  }
  /** Initializes the CPU, AHB and APB buses clocks
  */
  RCC_ClkInitStruct.ClockType = RCC_CLOCKTYPE_HCLK|RCC_CLOCKTYPE_SYSCLK
                              |RCC_CLOCKTYPE_PCLK1|RCC_CLOCKTYPE_PCLK2;
  RCC_ClkInitStruct.SYSCLKSource = RCC_SYSCLKSOURCE_PLLCLK;
  RCC_ClkInitStruct.AHBCLKDivider = RCC_SYSCLK_DIV1;
  RCC_ClkInitStruct.APB1CLKDivider = RCC_HCLK_DIV4;
  RCC_ClkInitStruct.APB2CLKDivider = RCC_HCLK_DIV2;

  if (HAL_RCC_ClockConfig(&RCC_ClkInitStruct, FLASH_LATENCY_5) != HAL_OK)
  {
    Error_Handler();
  }
}

/**
  * @brief ADC1 Initialization Function
  * @param None
  * @retval None
  */
static void MX_ADC1_Init(void)
{

  /* USER CODE BEGIN ADC1_Init 0 */

  /* USER CODE END ADC1_Init 0 */

  ADC_ChannelConfTypeDef sConfig = {0};

  /* USER CODE BEGIN ADC1_Init 1 */

  /* USER CODE END ADC1_Init 1 */
  /** Configure the global features of the ADC (Clock, Resolution, Data Alignment and number of conversion)
  */
  hadc1.Instance = ADC1;
  hadc1.Init.ClockPrescaler = ADC_CLOCK_SYNC_PCLK_DIV4;
  hadc1.Init.Resolution = ADC_RESOLUTION_12B;
  hadc1.Init.ScanConvMode = ENABLE;
  hadc1.Init.ContinuousConvMode = ENABLE;
  hadc1.Init.DiscontinuousConvMode = DISABLE;
  hadc1.Init.ExternalTrigConvEdge = ADC_EXTERNALTRIGCONVEDGE_NONE;
  hadc1.Init.ExternalTrigConv = ADC_SOFTWARE_START;
  hadc1.Init.DataAlign = ADC_DATAALIGN_RIGHT;
  hadc1.Init.NbrOfConversion = 16;
  hadc1.Init.DMAContinuousRequests = ENABLE;
  hadc1.Init.EOCSelection = ADC_EOC_SINGLE_CONV;
  if (HAL_ADC_Init(&hadc1) != HAL_OK)
  {
    Error_Handler();
  }
  /** Configure for the selected ADC regular channel its corresponding rank in the sequencer and its sample time.
  */
  sConfig.Channel = ADC_CHANNEL_9;
  sConfig.Rank = 1;
  sConfig.SamplingTime = ADC_SAMPLETIME_56CYCLES;
  if (HAL_ADC_ConfigChannel(&hadc1, &sConfig) != HAL_OK)
  {
    Error_Handler();
  }
  /** Configure for the selected ADC regular channel its corresponding rank in the sequencer and its sample time.
  */
  sConfig.Channel = ADC_CHANNEL_10;
  sConfig.Rank = 2;
  if (HAL_ADC_ConfigChannel(&hadc1, &sConfig) != HAL_OK)
  {
    Error_Handler();
  }
  /** Configure for the selected ADC regular channel its corresponding rank in the sequencer and its sample time.
  */
  sConfig.Channel = ADC_CHANNEL_8;
  sConfig.Rank = 3;
  if (HAL_ADC_ConfigChannel(&hadc1, &sConfig) != HAL_OK)
  {
    Error_Handler();
  }
  /** Configure for the selected ADC regular channel its corresponding rank in the sequencer and its sample time.
  */
  sConfig.Channel = ADC_CHANNEL_11;
  sConfig.Rank = 4;
  if (HAL_ADC_ConfigChannel(&hadc1, &sConfig) != HAL_OK)
  {
    Error_Handler();
  }
  /** Configure for the selected ADC regular channel its corresponding rank in the sequencer and its sample time.
  */
  sConfig.Channel = ADC_CHANNEL_15;
  sConfig.Rank = 5;
  if (HAL_ADC_ConfigChannel(&hadc1, &sConfig) != HAL_OK)
  {
    Error_Handler();
  }
  /** Configure for the selected ADC regular channel its corresponding rank in the sequencer and its sample time.
  */
  sConfig.Channel = ADC_CHANNEL_12;
  sConfig.Rank = 6;
  if (HAL_ADC_ConfigChannel(&hadc1, &sConfig) != HAL_OK)
  {
    Error_Handler();
  }
  /** Configure for the selected ADC regular channel its corresponding rank in the sequencer and its sample time.
  */
  sConfig.Channel = ADC_CHANNEL_14;
  sConfig.Rank = 7;
  if (HAL_ADC_ConfigChannel(&hadc1, &sConfig) != HAL_OK)
  {
    Error_Handler();
  }
  /** Configure for the selected ADC regular channel its corresponding rank in the sequencer and its sample time.
  */
  sConfig.Channel = ADC_CHANNEL_13;
  sConfig.Rank = 8;
  if (HAL_ADC_ConfigChannel(&hadc1, &sConfig) != HAL_OK)
  {
    Error_Handler();
  }
  /** Configure for the selected ADC regular channel its corresponding rank in the sequencer and its sample time.
  */
  sConfig.Channel = ADC_CHANNEL_7;
  sConfig.Rank = 9;
  if (HAL_ADC_ConfigChannel(&hadc1, &sConfig) != HAL_OK)
  {
    Error_Handler();
  }
  /** Configure for the selected ADC regular channel its corresponding rank in the sequencer and its sample time.
  */
  sConfig.Channel = ADC_CHANNEL_0;
  sConfig.Rank = 10;
  if (HAL_ADC_ConfigChannel(&hadc1, &sConfig) != HAL_OK)
  {
    Error_Handler();
  }
  /** Configure for the selected ADC regular channel its corresponding rank in the sequencer and its sample time.
  */
  sConfig.Channel = ADC_CHANNEL_6;
  sConfig.Rank = 11;
  if (HAL_ADC_ConfigChannel(&hadc1, &sConfig) != HAL_OK)
  {
    Error_Handler();
  }
  /** Configure for the selected ADC regular channel its corresponding rank in the sequencer and its sample time.
  */
  sConfig.Channel = ADC_CHANNEL_1;
  sConfig.Rank = 12;
  if (HAL_ADC_ConfigChannel(&hadc1, &sConfig) != HAL_OK)
  {
    Error_Handler();
  }
  /** Configure for the selected ADC regular channel its corresponding rank in the sequencer and its sample time.
  */
  sConfig.Channel = ADC_CHANNEL_5;
  sConfig.Rank = 13;
  if (HAL_ADC_ConfigChannel(&hadc1, &sConfig) != HAL_OK)
  {
    Error_Handler();
  }
  /** Configure for the selected ADC regular channel its corresponding rank in the sequencer and its sample time.
  */
  sConfig.Channel = ADC_CHANNEL_2;
  sConfig.Rank = 14;
  if (HAL_ADC_ConfigChannel(&hadc1, &sConfig) != HAL_OK)
  {
    Error_Handler();
  }
  /** Configure for the selected ADC regular channel its corresponding rank in the sequencer and its sample time.
  */
  sConfig.Channel = ADC_CHANNEL_4;
  sConfig.Rank = 15;
  if (HAL_ADC_ConfigChannel(&hadc1, &sConfig) != HAL_OK)
  {
    Error_Handler();
  }
  /** Configure for the selected ADC regular channel its corresponding rank in the sequencer and its sample time.
  */
  sConfig.Channel = ADC_CHANNEL_3;
  sConfig.Rank = 16;
  if (HAL_ADC_ConfigChannel(&hadc1, &sConfig) != HAL_OK)
  {
    Error_Handler();
  }
  /* USER CODE BEGIN ADC1_Init 2 */

  /* USER CODE END ADC1_Init 2 */

}

/**
  * @brief I2C1 Initialization Function
  * @param None
  * @retval None
  */
static void MX_I2C1_Init(void)
{

  /* USER CODE BEGIN I2C1_Init 0 */

  /* USER CODE END I2C1_Init 0 */

  /* USER CODE BEGIN I2C1_Init 1 */

  /* USER CODE END I2C1_Init 1 */
  hi2c1.Instance = I2C1;
  hi2c1.Init.ClockSpeed = 100000;
  hi2c1.Init.DutyCycle = I2C_DUTYCYCLE_2;
  hi2c1.Init.OwnAddress1 = 0;
  hi2c1.Init.AddressingMode = I2C_ADDRESSINGMODE_7BIT;
  hi2c1.Init.DualAddressMode = I2C_DUALADDRESS_DISABLE;
  hi2c1.Init.OwnAddress2 = 0;
  hi2c1.Init.GeneralCallMode = I2C_GENERALCALL_DISABLE;
  hi2c1.Init.NoStretchMode = I2C_NOSTRETCH_ENABLE;
  if (HAL_I2C_Init(&hi2c1) != HAL_OK)
  {
    Error_Handler();
  }
  /* USER CODE BEGIN I2C1_Init 2 */

  /* USER CODE END I2C1_Init 2 */

}

/**
  * @brief SPI2 Initialization Function
  * @param None
  * @retval None
  */
static void MX_SPI2_Init(void)
{

  /* USER CODE BEGIN SPI2_Init 0 */

  /* USER CODE END SPI2_Init 0 */

  /* USER CODE BEGIN SPI2_Init 1 */

  /* USER CODE END SPI2_Init 1 */
  /* SPI2 parameter configuration*/
  hspi2.Instance = SPI2;
  hspi2.Init.Mode = SPI_MODE_MASTER;
  hspi2.Init.Direction = SPI_DIRECTION_2LINES;
  hspi2.Init.DataSize = SPI_DATASIZE_8BIT;
  hspi2.Init.CLKPolarity = SPI_POLARITY_HIGH;
  hspi2.Init.CLKPhase = SPI_PHASE_2EDGE;
  hspi2.Init.NSS = SPI_NSS_SOFT;
  hspi2.Init.BaudRatePrescaler = SPI_BAUDRATEPRESCALER_32;
  hspi2.Init.FirstBit = SPI_FIRSTBIT_MSB;
  hspi2.Init.TIMode = SPI_TIMODE_DISABLE;
  hspi2.Init.CRCCalculation = SPI_CRCCALCULATION_DISABLE;
  hspi2.Init.CRCPolynomial = 10;
  if (HAL_SPI_Init(&hspi2) != HAL_OK)
  {
    Error_Handler();
  }
  /* USER CODE BEGIN SPI2_Init 2 */

  /* USER CODE END SPI2_Init 2 */

}

/**
  * @brief TIM1 Initialization Function
  * @param None
  * @retval None
  */
static void MX_TIM1_Init(void)
{

  /* USER CODE BEGIN TIM1_Init 0 */

  /* USER CODE END TIM1_Init 0 */

  TIM_Encoder_InitTypeDef sConfig = {0};
  TIM_MasterConfigTypeDef sMasterConfig = {0};

  /* USER CODE BEGIN TIM1_Init 1 */

  /* USER CODE END TIM1_Init 1 */
  htim1.Instance = TIM1;
  htim1.Init.Prescaler = 0;
  htim1.Init.CounterMode = TIM_COUNTERMODE_UP;
  htim1.Init.Period = 2047;
  htim1.Init.ClockDivision = TIM_CLOCKDIVISION_DIV1;
  htim1.Init.RepetitionCounter = 0;
  htim1.Init.AutoReloadPreload = TIM_AUTORELOAD_PRELOAD_DISABLE;
  sConfig.EncoderMode = TIM_ENCODERMODE_TI12;
  sConfig.IC1Polarity = TIM_ICPOLARITY_RISING;
  sConfig.IC1Selection = TIM_ICSELECTION_DIRECTTI;
  sConfig.IC1Prescaler = TIM_ICPSC_DIV1;
  sConfig.IC1Filter = 0;
  sConfig.IC2Polarity = TIM_ICPOLARITY_RISING;
  sConfig.IC2Selection = TIM_ICSELECTION_DIRECTTI;
  sConfig.IC2Prescaler = TIM_ICPSC_DIV1;
  sConfig.IC2Filter = 0;
  if (HAL_TIM_Encoder_Init(&htim1, &sConfig) != HAL_OK)
  {
    Error_Handler();
  }
  sMasterConfig.MasterOutputTrigger = TIM_TRGO_RESET;
  sMasterConfig.MasterSlaveMode = TIM_MASTERSLAVEMODE_DISABLE;
  if (HAL_TIMEx_MasterConfigSynchronization(&htim1, &sMasterConfig) != HAL_OK)
  {
    Error_Handler();
  }
  /* USER CODE BEGIN TIM1_Init 2 */

  /* USER CODE END TIM1_Init 2 */

}

/**
  * @brief TIM3 Initialization Function
  * @param None
  * @retval None
  */
static void MX_TIM3_Init(void)
{

  /* USER CODE BEGIN TIM3_Init 0 */

  /* USER CODE END TIM3_Init 0 */

  TIM_Encoder_InitTypeDef sConfig = {0};
  TIM_MasterConfigTypeDef sMasterConfig = {0};

  /* USER CODE BEGIN TIM3_Init 1 */

  /* USER CODE END TIM3_Init 1 */
  htim3.Instance = TIM3;
  htim3.Init.Prescaler = 0;
  htim3.Init.CounterMode = TIM_COUNTERMODE_UP;
  htim3.Init.Period = 2047;
  htim3.Init.ClockDivision = TIM_CLOCKDIVISION_DIV1;
  htim3.Init.AutoReloadPreload = TIM_AUTORELOAD_PRELOAD_DISABLE;
  sConfig.EncoderMode = TIM_ENCODERMODE_TI12;
  sConfig.IC1Polarity = TIM_ICPOLARITY_RISING;
  sConfig.IC1Selection = TIM_ICSELECTION_DIRECTTI;
  sConfig.IC1Prescaler = TIM_ICPSC_DIV1;
  sConfig.IC1Filter = 0;
  sConfig.IC2Polarity = TIM_ICPOLARITY_RISING;
  sConfig.IC2Selection = TIM_ICSELECTION_DIRECTTI;
  sConfig.IC2Prescaler = TIM_ICPSC_DIV1;
  sConfig.IC2Filter = 0;
  if (HAL_TIM_Encoder_Init(&htim3, &sConfig) != HAL_OK)
  {
    Error_Handler();
  }
  sMasterConfig.MasterOutputTrigger = TIM_TRGO_RESET;
  sMasterConfig.MasterSlaveMode = TIM_MASTERSLAVEMODE_DISABLE;
  if (HAL_TIMEx_MasterConfigSynchronization(&htim3, &sMasterConfig) != HAL_OK)
  {
    Error_Handler();
  }
  /* USER CODE BEGIN TIM3_Init 2 */

  /* USER CODE END TIM3_Init 2 */

}

/**
  * @brief TIM4 Initialization Function
  * @param None
  * @retval None
  */
static void MX_TIM4_Init(void)
{

  /* USER CODE BEGIN TIM4_Init 0 */

  /* USER CODE END TIM4_Init 0 */

  TIM_MasterConfigTypeDef sMasterConfig = {0};
  TIM_OC_InitTypeDef sConfigOC = {0};

  /* USER CODE BEGIN TIM4_Init 1 */

  /* USER CODE END TIM4_Init 1 */
  htim4.Instance = TIM4;
  htim4.Init.Prescaler = 2;
  htim4.Init.CounterMode = TIM_COUNTERMODE_UP;
  htim4.Init.Period = 999;
  htim4.Init.ClockDivision = TIM_CLOCKDIVISION_DIV1;
  htim4.Init.AutoReloadPreload = TIM_AUTORELOAD_PRELOAD_DISABLE;
  if (HAL_TIM_PWM_Init(&htim4) != HAL_OK)
  {
    Error_Handler();
  }
  sMasterConfig.MasterOutputTrigger = TIM_TRGO_RESET;
  sMasterConfig.MasterSlaveMode = TIM_MASTERSLAVEMODE_DISABLE;
  if (HAL_TIMEx_MasterConfigSynchronization(&htim4, &sMasterConfig) != HAL_OK)
  {
    Error_Handler();
  }
  sConfigOC.OCMode = TIM_OCMODE_PWM1;
  sConfigOC.Pulse = 0;
  sConfigOC.OCPolarity = TIM_OCPOLARITY_HIGH;
  sConfigOC.OCFastMode = TIM_OCFAST_DISABLE;
  if (HAL_TIM_PWM_ConfigChannel(&htim4, &sConfigOC, TIM_CHANNEL_1) != HAL_OK)
  {
    Error_Handler();
  }
  if (HAL_TIM_PWM_ConfigChannel(&htim4, &sConfigOC, TIM_CHANNEL_2) != HAL_OK)
  {
    Error_Handler();
  }
  /* USER CODE BEGIN TIM4_Init 2 */

  /* USER CODE END TIM4_Init 2 */
  HAL_TIM_MspPostInit(&htim4);

}

/**
  * @brief TIM6 Initialization Function
  * @param None
  * @retval None
  */
static void MX_TIM6_Init(void)
{

  /* USER CODE BEGIN TIM6_Init 0 */

  /* USER CODE END TIM6_Init 0 */

  TIM_MasterConfigTypeDef sMasterConfig = {0};

  /* USER CODE BEGIN TIM6_Init 1 */

  /* USER CODE END TIM6_Init 1 */
  htim6.Instance = TIM6;
  htim6.Init.Prescaler = 4;
  htim6.Init.CounterMode = TIM_COUNTERMODE_UP;
  htim6.Init.Period = 16799;
  htim6.Init.AutoReloadPreload = TIM_AUTORELOAD_PRELOAD_DISABLE;
  if (HAL_TIM_Base_Init(&htim6) != HAL_OK)
  {
    Error_Handler();
  }
  sMasterConfig.MasterOutputTrigger = TIM_TRGO_RESET;
  sMasterConfig.MasterSlaveMode = TIM_MASTERSLAVEMODE_DISABLE;
  if (HAL_TIMEx_MasterConfigSynchronization(&htim6, &sMasterConfig) != HAL_OK)
  {
    Error_Handler();
  }
  /* USER CODE BEGIN TIM6_Init 2 */

  /* USER CODE END TIM6_Init 2 */

}

/**
  * @brief TIM10 Initialization Function
  * @param None
  * @retval None
  */
static void MX_TIM10_Init(void)
{

  /* USER CODE BEGIN TIM10_Init 0 */

  /* USER CODE END TIM10_Init 0 */

  /* USER CODE BEGIN TIM10_Init 1 */

  /* USER CODE END TIM10_Init 1 */
  htim10.Instance = TIM10;
  htim10.Init.Prescaler = 4;
  htim10.Init.CounterMode = TIM_COUNTERMODE_UP;
  htim10.Init.Period = 33599;
  htim10.Init.ClockDivision = TIM_CLOCKDIVISION_DIV1;
  htim10.Init.AutoReloadPreload = TIM_AUTORELOAD_PRELOAD_DISABLE;
  if (HAL_TIM_Base_Init(&htim10) != HAL_OK)
  {
    Error_Handler();
  }
  /* USER CODE BEGIN TIM10_Init 2 */

  /* USER CODE END TIM10_Init 2 */

}

/**
  * @brief TIM11 Initialization Function
  * @param None
  * @retval None
  */
static void MX_TIM11_Init(void)
{

  /* USER CODE BEGIN TIM11_Init 0 */

  /* USER CODE END TIM11_Init 0 */

  /* USER CODE BEGIN TIM11_Init 1 */

  /* USER CODE END TIM11_Init 1 */
  htim11.Instance = TIM11;
  htim11.Init.Prescaler = 4;
  htim11.Init.CounterMode = TIM_COUNTERMODE_UP;
  htim11.Init.Period = 33599;
  htim11.Init.ClockDivision = TIM_CLOCKDIVISION_DIV1;
  htim11.Init.AutoReloadPreload = TIM_AUTORELOAD_PRELOAD_DISABLE;
  if (HAL_TIM_Base_Init(&htim11) != HAL_OK)
  {
    Error_Handler();
  }
  /* USER CODE BEGIN TIM11_Init 2 */

  /* USER CODE END TIM11_Init 2 */

}

/**
  * @brief USART6 Initialization Function
  * @param None
  * @retval None
  */
static void MX_USART6_UART_Init(void)
{

  /* USER CODE BEGIN USART6_Init 0 */

  /* USER CODE END USART6_Init 0 */

  /* USER CODE BEGIN USART6_Init 1 */

  /* USER CODE END USART6_Init 1 */
  huart6.Instance = USART6;
  huart6.Init.BaudRate = 9600;
  huart6.Init.WordLength = UART_WORDLENGTH_8B;
  huart6.Init.StopBits = UART_STOPBITS_1;
  huart6.Init.Parity = UART_PARITY_NONE;
  huart6.Init.Mode = UART_MODE_TX_RX;
  huart6.Init.HwFlowCtl = UART_HWCONTROL_NONE;
  huart6.Init.OverSampling = UART_OVERSAMPLING_16;
  if (HAL_UART_Init(&huart6) != HAL_OK)
  {
    Error_Handler();
  }
  /* USER CODE BEGIN USART6_Init 2 */

  /* USER CODE END USART6_Init 2 */

}

/**
  * Enable DMA controller clock
  */
static void MX_DMA_Init(void)
{

  /* DMA controller clock enable */
  __HAL_RCC_DMA2_CLK_ENABLE();

  /* DMA interrupt init */
  /* DMA2_Stream0_IRQn interrupt configuration */
  HAL_NVIC_SetPriority(DMA2_Stream0_IRQn, 0, 0);
  HAL_NVIC_EnableIRQ(DMA2_Stream0_IRQn);

}

/**
  * @brief GPIO Initialization Function
  * @param None
  * @retval None
  */
static void MX_GPIO_Init(void)
{
  GPIO_InitTypeDef GPIO_InitStruct = {0};

  /* GPIO Ports Clock Enable */
  __HAL_RCC_GPIOC_CLK_ENABLE();
  __HAL_RCC_GPIOH_CLK_ENABLE();
  __HAL_RCC_GPIOA_CLK_ENABLE();
  __HAL_RCC_GPIOB_CLK_ENABLE();
  __HAL_RCC_GPIOD_CLK_ENABLE();

  /*Configure GPIO pin Output Level */
  HAL_GPIO_WritePin(GPIOC, DRV2_PH_Pin|LED_White_Pin|LED_B_Pin, GPIO_PIN_RESET);

  /*Configure GPIO pin Output Level */
  HAL_GPIO_WritePin(GPIOB, SPI2_nCS_Pin|LED_Red_Pin, GPIO_PIN_RESET);

  /*Configure GPIO pin Output Level */
  HAL_GPIO_WritePin(GPIOA, LED_G_Pin|LED_R_Pin, GPIO_PIN_RESET);

  /*Configure GPIO pin Output Level */
  HAL_GPIO_WritePin(DRV1_PH_GPIO_Port, DRV1_PH_Pin, GPIO_PIN_RESET);

  /*Configure GPIO pins : DRV2_PH_Pin LED_White_Pin LED_B_Pin */
  GPIO_InitStruct.Pin = DRV2_PH_Pin|LED_White_Pin|LED_B_Pin;
  GPIO_InitStruct.Mode = GPIO_MODE_OUTPUT_PP;
  GPIO_InitStruct.Pull = GPIO_NOPULL;
  GPIO_InitStruct.Speed = GPIO_SPEED_FREQ_LOW;
  HAL_GPIO_Init(GPIOC, &GPIO_InitStruct);

  /*Configure GPIO pins : SW1_Pin SW2_Pin Rotary2_Pin Rotary8_Pin
                           Rotary1_Pin */
  GPIO_InitStruct.Pin = SW1_Pin|SW2_Pin|Rotary2_Pin|Rotary8_Pin
                          |Rotary1_Pin;
  GPIO_InitStruct.Mode = GPIO_MODE_INPUT;
  GPIO_InitStruct.Pull = GPIO_NOPULL;
  HAL_GPIO_Init(GPIOC, &GPIO_InitStruct);

  /*Configure GPIO pins : SubSens1_Pin SubSens2_Pin */
  GPIO_InitStruct.Pin = SubSens1_Pin|SubSens2_Pin;
  GPIO_InitStruct.Mode = GPIO_MODE_INPUT;
  GPIO_InitStruct.Pull = GPIO_NOPULL;
  HAL_GPIO_Init(GPIOB, &GPIO_InitStruct);

  /*Configure GPIO pins : SPI2_nCS_Pin LED_Red_Pin */
  GPIO_InitStruct.Pin = SPI2_nCS_Pin|LED_Red_Pin;
  GPIO_InitStruct.Mode = GPIO_MODE_OUTPUT_PP;
  GPIO_InitStruct.Pull = GPIO_NOPULL;
  GPIO_InitStruct.Speed = GPIO_SPEED_FREQ_LOW;
  HAL_GPIO_Init(GPIOB, &GPIO_InitStruct);

  /*Configure GPIO pins : LED_G_Pin LED_R_Pin */
  GPIO_InitStruct.Pin = LED_G_Pin|LED_R_Pin;
  GPIO_InitStruct.Mode = GPIO_MODE_OUTPUT_PP;
  GPIO_InitStruct.Pull = GPIO_NOPULL;
  GPIO_InitStruct.Speed = GPIO_SPEED_FREQ_LOW;
  HAL_GPIO_Init(GPIOA, &GPIO_InitStruct);

  /*Configure GPIO pin : Rotary4_Pin */
  GPIO_InitStruct.Pin = Rotary4_Pin;
  GPIO_InitStruct.Mode = GPIO_MODE_INPUT;
  GPIO_InitStruct.Pull = GPIO_NOPULL;
  HAL_GPIO_Init(Rotary4_GPIO_Port, &GPIO_InitStruct);

  /*Configure GPIO pin : PA15 */
  GPIO_InitStruct.Pin = GPIO_PIN_15;
  GPIO_InitStruct.Mode = GPIO_MODE_AF_PP;
  GPIO_InitStruct.Pull = GPIO_NOPULL;
  GPIO_InitStruct.Speed = GPIO_SPEED_FREQ_LOW;
  GPIO_InitStruct.Alternate = GPIO_AF1_TIM2;
  HAL_GPIO_Init(GPIOA, &GPIO_InitStruct);

  /*Configure GPIO pin : DRV1_PH_Pin */
  GPIO_InitStruct.Pin = DRV1_PH_Pin;
  GPIO_InitStruct.Mode = GPIO_MODE_OUTPUT_PP;
  GPIO_InitStruct.Pull = GPIO_NOPULL;
  GPIO_InitStruct.Speed = GPIO_SPEED_FREQ_LOW;
  HAL_GPIO_Init(DRV1_PH_GPIO_Port, &GPIO_InitStruct);

}

/* USER CODE BEGIN 4 */

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

void sensor_initialize() {
	sensgettime = 0;
	if (HAL_ADC_Start_DMA(&hadc1, (uint32_t*) analograw,
	ADC_CONVERTED_DATA_BUFFER_SIZE) != HAL_OK) {
		Error_Handler();
	}
	HAL_Delay(1000);
}

void sensor_finalize() {
	HAL_ADC_Stop_DMA(&hadc1);
}

void running_initialize() {
#if USE_LED
	set_led(0b11, 0b00);
#endif
#if USE_FLASH
	for(unsigned char i = 0; CALIBRATIONSIZE > i; i++)
	{
		analogmax[i] = flash_buffer.analogmax[i];
		analogmin[i] = flash_buffer.analogmin[i];
	}
#endif
#if USE_SLOWSTART
	slow = 1;
	starting_length = 0;
	base_velocity_target = velocity_target;
	base_p = kp;
	base_i = ki;
	base_d = kd;
#endif  // USE_SLOWSTART
	HAL_Delay(3000);
	sensor_initialize();
#if D_ENCODER
	s_encoder_l = 0;
	s_encoder_r = 0;
	left_length = 0;
	right_length = 0;
#endif
#if USE_VELOCITY_CONTROL && D_VELOCITY_CONTROL_TIMER
	stoptime = 0;
#endif
	timtim1 = 0;
	timtim2 = 0;
	encoder_initialize();
	printf("Encoder_Start\r\n");
	HAL_TIM_Encoder_Start(&htim1, TIM_CHANNEL_ALL);
	HAL_TIM_Encoder_Start(&htim3, TIM_CHANNEL_ALL);
	subsensbuf = 0;
	marker = 0;
	sidedeltacount = 0;
	markerstate = 0;
	rightmarkercount = 0;
#if USE_FLASH
	course_state_time = 0;
#endif
	printf("SIDESENSOR ENCODER\r\n");
	HAL_TIM_Base_Start_IT(&htim10);
	leftmotor = 0;
	rightmotor = 0;
	beforedirection = 0;
	sdirection = 0;
	printf("PWM_Start\r\n");
	HAL_TIM_PWM_Start(&htim4, TIM_CHANNEL_1);	// 50kHz (0.02ms)
	HAL_TIM_PWM_Start(&htim4, TIM_CHANNEL_2);
	printf("PID\r\n");
	HAL_TIM_Base_Start_IT(&htim6);	// PID
#if PLAY
	motorenable = 1;
#endif
}

void running_finalize() {
	motorenable = 0;
	sensor_finalize();
	HAL_TIM_Base_Stop_IT(&htim6);
	HAL_TIM_PWM_Stop(&htim4, TIM_CHANNEL_2);
	HAL_TIM_PWM_Stop(&htim4, TIM_CHANNEL_1);
	encoder_finalize();
	HAL_TIM_Base_Stop_IT(&htim10);
}

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

void encoder_initialize() {
#if USE_VELOCITY_CONTROL
#if VELOCITY_CONTROL_RELATIVE
	s_velocity_error = 0;
#else
	s_velocity_error_l = 0;
	s_velocity_error_r = 0;
#endif
#if USE_FLASH
	if(rv == 0x01)
	{
		s_velocity = 0;
		for(int i = 0; COURSE_STATE_SIZE> i; i++)
		{
			flash_buffer.radius[i] = THRESHOLDRADIUS;
		}
	}
#endif
#endif

	TIM1->CNT = ENCODER_MIDDLE;
	TIM3->CNT = ENCODER_MIDDLE;

	HAL_TIM_Encoder_Start(&htim1, TIM_CHANNEL_ALL);
	HAL_TIM_Encoder_Start(&htim3, TIM_CHANNEL_ALL);
}

void encoder_finalize() {
	HAL_TIM_Encoder_Stop(&htim1, TIM_CHANNEL_ALL);
	HAL_TIM_Encoder_Stop(&htim3, TIM_CHANNEL_ALL);
}

PUTCHAR_PROTOTYPE {
	HAL_UART_Transmit(&huart6, (uint8_t*) &ch, 1, 0xFFFF);
	return ch;
}

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
/* USER CODE END 4 */

/**
  * @brief  This function is executed in case of error occurrence.
  * @retval None
  */
void Error_Handler(void)
{
  /* USER CODE BEGIN Error_Handler_Debug */
	/* User can add his own implementation to report the HAL error return state */
	__disable_irq();
	while (1) {
	}
  /* USER CODE END Error_Handler_Debug */
}

#ifdef  USE_FULL_ASSERT
/**
  * @brief  Reports the name of the source file and the source line number
  *         where the assert_param error has occurred.
  * @param  file: pointer to the source file name
  * @param  line: assert_param error line source number
  * @retval None
  */
void assert_failed(uint8_t *file, uint32_t line)
{
  /* USER CODE BEGIN 6 */
  /* User can add his own implementation to report the file name and line number,
     ex: printf("Wrong parameters value: file %s on line %d\r\n", file, line) */
  /* USER CODE END 6 */
}
#endif /* USE_FULL_ASSERT */

/************************ (C) COPYRIGHT STMicroelectronics *****END OF FILE****/
