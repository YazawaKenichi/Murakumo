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
#include "stdio.h"
#include <string.h>
#include <stdint.h>
// #include "math.h"
#include "ICM20648.h"

/* USER CODE END Includes */

/* Private typedef -----------------------------------------------------------*/
/* USER CODE BEGIN PTD */

/* USER CODE END PTD */

/* Private define ------------------------------------------------------------*/
/* USER CODE BEGIN PD */
#ifdef __GNUC__
#define PUTCHAR_PROTOTYPE int __io_putchar(int ch)
#else
#define PUTCHAR_PROTOTYPE int fputc(int ch, FILE *f)
#endif

#define PLAY 1

#define D_ANALOG 0
#define D_MOTOR 0
#define D_SIDESENS 0	//
#define D_ENCODER 0	// Debug Encoder
#define D_PWM 0
#define D_ROTARY 0
#define D_SWITCH 0
#define D_IMU 0
#define D_LED 0
#define D_VELOCITY_CONTROL_TIMER 0

#define USE_ANALOG 1
#define USE_MOTOR 1
#define USE_SIDESENSOR 1	// Use SideSensor
#define USE_ENCODER 1
#define USE_ROTARY 1
#define USE_SWITCH 1
#define USE_LED 1
#define USE_FLASH 0
#define USE_IMU 0
#define USE_BUZZER 0
#define USE_VELOCITY_CONTROL 1

#define ATTACH_LONGSENSOR 0	// use normal sensor and long sensor
#define USE_LONGSENSOR 0	// only use long sensor
#define CSV_FORMAT 0	//

#define SECOND 1

/* USER CODE END PD */

/* Private macro -------------------------------------------------------------*/
/* USER CODE BEGIN PM */
#if USE_FLASH
#define BACKUP_FLASH_SECTOR_NUM FLASH_SECTOR_11
#define BACKUP_FLASH_SECTOR_SIZE (1024*16)
#define ENC_SIZE 128
#endif

#define ADC_CONVERTED_DATA_BUFFER_SIZE 16	// ADC Channel Count
#define SENSGETCOUNT 9

#define ENCODER_MIDDLE (65536/2)

#ifndef _ARM_MATH_H
#define PI 3.14159265358979f
#endif	// __MAIN_H
#define TIREDIAMETER 21000		// um
#define PULSEPERROTATE (5250*2)	// Pulse / Rotate
// LENGTHPUEPULSE = PI * TIREDIAMETER / PULSEPERROTATE

#define COMMONSPEED1 0	// 700 // 570
#define KP1 5	// 30 // 25
#define KD1 2	// 8  // 10
#define KI1 0
#define COMMONSPEED2 100	// 700 // 570
#define KP2 5	// 30 // 25
#define KD2 2	// 8  // 10
#define KI2 0
#define COMMONSPEED3 100	// 700 // 570
#define KP3 3	// 30 // 25
#define KD3 1	// 8  // 10
#define KI3 0

#define PWMMAX 1000 // 3360

#if D_PWM
#define STATICPWM 1
#endif

#define D_VELOCITY_CONTROL_IN_WHILE 0
#define VELOCITY_CONTROL_RELATIVE 1

#if USE_VELOCITY_CONTROL
#define VELOCITY_TARGET 30	//65.973f 	// MAX 35579 // mm/s
#define VELOCITY_MAX 35579
#if VELOCITY_CONTROL_RELATIVE
#define VKP 20	// 27.5f
#define VKI 0.2f	// 0.15f
#else	// VELOCITY_CONTRO_RELATIVE
// left
#define VKPL 8.0f
#define VKIL 0.025	// 0.025f
// right
#define VKPR 8.0f
#define VKIR 0.025	// 0.025f
#endif	// VELOCITY_CONTROL_RELATIVE
#if D_VELOCITY_CONTROL_TIMER
#define STOPTIME 10000 // 13188
#endif
#endif

#define ESC_MAG	"\x1b[35m"
#define ESC_RED "\x1b[31m"
#define ESC_YEL	"\x1b[33m"
#define ESC_GRE	"\x1b[32m"
#define ESC_CYA	"\x1b[36m"
#define ESC_BLU	"\x1b[34m"
#define ESC_DEF "\x1b[39m"

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
#if USE_FLASH
typedef struct {
	uint8_t svl[ENC_SIZE];
	uint8_t svr[ENC_SIZE];
	uint32_t common_speed2[ENC_SIZE];
	uint32_t common_speed3[ENC_SIZE];
//	uint16_t second[ENC_SIZE];
	Inertial inertial[ENC_SIZE];
} FlashBuffer;
#endif

// analog
uint16_t analograw[ADC_CONVERTED_DATA_BUFFER_SIZE];	// Analog Data

#if ATTACH_LONGSENSOR	// use normal sensor and long sensor
#define CALIBRATIONSIZE 16
#else
#if USE_LONGSENSOR	// only use long sensor
#define CALIBRATIONSIZE 4
#else
#define CALIBRATIONSIZE 12
#endif
#endif

uint16_t analog[CALIBRATIONSIZE];
uint16_t analogmax[CALIBRATIONSIZE];
uint16_t analogmin[CALIBRATIONSIZE];
uint16_t analogbuffers[SENSGETCOUNT][CALIBRATIONSIZE];

uint16_t analograte[CALIBRATIONSIZE];
uint16_t analogr, analogl;	// Sum Right Analog Sensor, Sum Left Analog Sensor
int direction, beforedirection;	// = analogr - analogl
unsigned char sensgettime;
uint8_t calibrationsize;

double kp, kd, ki;

unsigned char subsensbuf, marker, sidedeltacount, markerstate, rightmarkercount;// 0 ~ 255(2^8-1)
short int encoder_l, encoder_r;
double LENGTHPERPULSE;	// (um / pulse)

#if SECOND
// uint8_t velocity[COURSELENGTH * 1000];
#endif

#if USE_FLASH
const uint32_t start_address = 0x080E0000;
const uint32_t end_address = 0x080FFFFF;
FlashBuffer flash_buffer;
uint8_t course_state_time;
#endif

#if D_PWM
#define PWM_STEP_AMPLITUDE 1000		// (288 + 1024 * 3) // PWM Pulse Amplitude
#define PWM_STEP_OMEGA 100	// PWM Step Omega (unit mrad / s)
uint32_t pwmstepoutput;	// PWM Duty
uint32_t pwmsteptime;	// PWM Step Time
char pwmstepud;	// PWM Step upword or downword
#endif

#if D_ENCODER
uint16_t d_encoder_left, dd_encoder_left, pre_d_encoder_left, d_encoder_right,
		dd_encoder_right, pre_d_encoder_right;
uint16_t enc1, enc2, enc3;
#endif

#if USE_VELOCITY_CONTROL
double velocity_l, velocity_l_raw;
double velocity_r, velocity_r_raw;
#if VELOCITY_CONTROL_RELATIVE
double velocity, velocity_error, s_velocity_error, velocity_next, velocity_raw;
double nextspeed;
#else	// VELOCITY_CONTROL_RELATIVE
		double velocity_error_l, s_velocity_error_l, velocity_next_l, nextspeed_l;
		double velocity_error_r, s_velocity_error_r, velocity_next_r, nextspeed_r;
	#endif	// VELOCITY_CONTROL_RELATIVE
#if D_VELOCITY_CONTROL_TIMER
		uint16_t stoptime;
	#endif
#endif

// motor
short int commonspeed;
double leftmotor;
double rightmotor;

// switch
uint8_t rotary_value;
char enter;
uint16_t timtim;

// flag
uint8_t motorenable;

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

PUTCHAR_PROTOTYPE;
#if USE_LED
void led_rgb(char r, char g, char b);
void set_led(char);
#endif
void running_initialize();
void running_finalize();
void sensor_initialize();
void sensor_finalize();
void HAL_ADC_ConvCpltCallback(ADC_HandleTypeDef *AdcHandle);
#ifndef _ARM_MATH_H
double power(double, double);
#endif
#if USE_ENCODER
void encoder_initialize();
void encoder_finalize();
#endif
#if USE_FLASH
void eraseFlash(void);
void writeFlash(uint32_t, uint8_t*, uint32_t);
void loadFlash(uint32_t, uint8_t*, uint32_t);
#endif
void d_print();
#if USE_IMU
void IMU_printf(Inertial*);
void IMU_raw_printf();
#endif
double low_pass_filter(double val, double pre_val, double gamma);

void HAL_TIM_PeriodElapsedCallback(TIM_HandleTypeDef *htim) {
	if (htim->Instance == TIM6) {
#if D_LED
		HAL_TIM_Base_Start_IT(&htim6);	// PID

		if(enter)
		{
			HAL_GPIO_WritePin(GPIOB, GPIO_PIN_13, GPIO_PIN_RESET);
			enter = 0;
		}
		else
		{
			HAL_GPIO_WritePin(GPIOB, GPIO_PIN_13, GPIO_PIN_SET);
			enter = 1;
		}
#else
#if USE_MOTOR
#if USE_VELOCITY_CONTROL
#if D_VELOCITY_CONTROL_TIMER
		if(stoptime < STOPTIME)
		{
			stoptime++;
		}
		else
		{
			motorenable = 0;
		}
#endif // D_VELOCITY_CONTROL_TIMER
#endif	// USE_VELOCITY_CONTROL

		if (motorenable) {
#if !STATICMOTORPWM
#if USE_ANALOG
			analogl = 0;
			analogr = 0;
			for(unsigned char i = 0; i < CALIBRATIONSIZE; i++)
			{
				uint16_t analogbuf = analog[i];
				//			analogmax[i] = (analogmax[i] < analogbuf) ? analogbuf : analogmax[i];
				//			analogmin[i] = (analogmin[i] > analogbuf) ? analogbuf : analogmin[i];
				if(analogmax[i] < analogbuf)
				{
					analogmax[i] = analogbuf;
				}
				if(analogmin[i] > analogbuf)
				{
					analogmin[i] = analogbuf;
				}

				analograte[i] = ((analog[i] - analogmin[i]) * 1000) / (analogmax[i] - analogmin[i]);

				if(i % 2 == 0)
				{
				  analogl += analograte[i];
				}
				else
				{
				  analogr += analograte[i];
				}
			}
			switch(rotary_value)
			{
				case 0x1:
//					commonspeed = COMMONSPEED1;
					break;
				case 0x2:
#if USE_FLASH
					commonspeed = flash_buffer.common_speed2[course_state_time];
#endif
					break;
				case 0x3:
#if USE_FLASH
					commonspeed = flash_buffer.common_speed3[course_state_time];
#endif
					break;
				case 0xE:
					break;
				default:
					commonspeed = 0;
					break;
			}
			// ( direction > 0 ) is ( analogl > analogr ) i.e. left is black, right is white.
			// When ( direction > 0 ) , must turn right.
			// 白読みで 0 付�?
			// 右が白読みで正
			direction = (analogl - analogr);	// difference
#endif // USE_ANALOG
#if USE_ANALOG

#if USE_VELOCITY_CONTROL
#if !VELOCITY_CONTROL_RELATIVE
			// left
			leftmotor = nextspeed_l + (kp * direction / CALIBRATIONSIZE / 2 + kd * (direction - beforedirection));
			rightmotor = nextspeed_r - (kp * direction / CALIBRATIONSIZE / 2 + kd * (direction - beforedirection));
#else	// VELOCITY_CONTROL_RELATIVE
			commonspeed = nextspeed;
#endif
#endif	// D_VELOCITY_CONTOROL
			leftmotor = commonspeed + (kp * direction / CALIBRATIONSIZE / 2 + kd * (direction - beforedirection));
			rightmotor = commonspeed - (kp * direction / CALIBRATIONSIZE / 2 + kd * (direction - beforedirection));
#endif	// USE_ANALOG
#if !USE_ANALOG && USE_VELOCITY_CONTROL
#if !VELOCITY_CONTROL_RELATIVE
			leftmotor = nextspeed_l;
			rightmotor = nextspeed_r;
#else
			leftmotor = nextspeed;
			rightmotor = nextspeed;
#endif
#endif	// !USE_ANALOG
#if USE_ANALOG
			beforedirection = direction;
#endif	// USE_ANALOG
#else	// !STATICMOTORPWM
			leftmotor = COMMONSPEED1;
			rightmotor = COMMONSPEED1;
#endif	// !STATICMOTORPWM
		} else	// if(motorenable)
		{
			leftmotor = 0;
			rightmotor = 0;
		}
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
		__HAL_TIM_SET_COMPARE(&htim4, TIM_CHANNEL_1, leftmotor);
		__HAL_TIM_SET_COMPARE(&htim4, TIM_CHANNEL_2, rightmotor);
#else
#if !STATICPWM
		if(HAL_GPIO_ReadPin(GPIOC, GPIO_PIN_14))	// SW1
		{
			pwmstepoutput = PWM_STEP_OMEGA * pwmsteptime / 1000;
			HAL_GPIO_WritePin(GPIOD, GPIO_PIN_2, GPIO_PIN_RESET);
			HAL_GPIO_WritePin(GPIOC, GPIO_PIN_13, GPIO_PIN_SET);
			__HAL_TIM_SET_COMPARE(&htim4, TIM_CHANNEL_1, pwmstepoutput);
			__HAL_TIM_SET_COMPARE(&htim4, TIM_CHANNEL_2, pwmstepoutput);
			pwmstepud = (PWM_STEP_AMPLITUDE <= pwmstepoutput) ? 255 : (0 >= pwmstepoutput) ? 1 : pwmstepud;
			pwmsteptime = (pwmstepud == 255) ? pwmsteptime - 1 : pwmsteptime + 1;
		}
#else	// !STATICPWM
		HAL_GPIO_WritePin(GPIOD, GPIO_PIN_2, GPIO_PIN_RESET);
		HAL_GPIO_WritePin(GPIOC, GPIO_PIN_13, GPIO_PIN_SET);
		__HAL_TIM_SET_COMPARE(&htim4, TIM_CHANNEL_1, COMMONSPEED1);
		__HAL_TIM_SET_COMPARE(&htim4, TIM_CHANNEL_2, COMMONSPEED1);
#endif	// STATICPWM
#endif	// D_PWM
#endif	// !     D_LED
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
						if (rightmarkercount == 0) {
							rightmarkercount++;
						} else if (rightmarkercount == 1) {
							enter = 0;
						}
					} else if (first == 0b10) {
						// left -> curve
						markerstate = 0b10;
#if USE_FLASH
						course_state_time++;
						if (course_state_time >= ENC_SIZE) {
							motorenable = 0;
						}
#endif
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
#if USE_VELOCITY_CONTROL
#if !VELOCITY_CONTROL_RELATIVE

		// error = target - raw
		// motor = commonspeed + KP * error - KD * d_error + KI * s_error

		// left
		velocity_l_raw = encoder_l * LENGTHPERPULSE;
		velocity_l = low_pass_filter(velocity_l_raw, velocity_l, 0.1);
		// Here VELOCITY_TARGET is array from Flash ROM.
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
		velocity_l_raw = (double)encoder_l * LENGTHPERPULSE;
		velocity_l = low_pass_filter(velocity_l_raw, velocity_l, 0.0f);
		velocity_r_raw = (double)encoder_r * LENGTHPERPULSE;
		velocity_r = low_pass_filter(velocity_r_raw, velocity_r, 0.0f);
		velocity_error = VELOCITY_TARGET - (velocity_l + velocity_r) / (double)2.0f;
		s_velocity_error = s_velocity_error + velocity_error;
		// PI
		velocity_next = VKP * velocity_error + VKI * s_velocity_error;
		nextspeed = velocity_next * (double)PWMMAX / (double)VELOCITY_MAX;
#endif	// VELOCITY_CONTROL_RELATIVE
#endif	// USE_VELOCITY_CONTROL

#if USE_FLASH
		flash_buffer.svl[course_state_time] += encoder_l * LENGTHPERPULSE
				/ 1000;
		flash_buffer.svr[course_state_time] += encoder_r * LENGTHPERPULSE
				/ 1000;
#if USE_IMU
		Inertial_Integral(&flash_buffer.inertial[course_state_time]);
#endif
#endif

		/*
		 lengthl = LENGTHPERPULSE * dvl;	// um
		 lengthr = LENGTHPERPULSE * dvr;	// um

		 velocityl = lengthl / ENCODERPERIOD / 1000;
		 velocityr = lengthr / ENCODERPERIOD / 1000;
		 */
#endif	// USE_ENCODER
#if USE_LED
		if(timtim % 1000 == 0)
		{
			set_led(0b10);
		}
		if(timtim % 1000 == 500)
		{
			set_led(0b00);
		}
		timtim = timtim + 1;
		if(timtim >= 60000)
		{
			timtim = 0;
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

	/*
	 if (htim->Instance == TIM13)	// TIM13 // 1ms
	 {
	 }

	 if (htim->Instance == TIM7)	// F // 0.1ms
	 {
	 }
	 */
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
#if USE_FLASH
	FlashBuffer readrom;
#endif

	enter = 0;
	motorenable = 0;
	rotary_value = 0;
	LENGTHPERPULSE = PI * TIREDIAMETER / PULSEPERROTATE;
	commonspeed = 0;
#if D_PWM
	pwmsteptime = 0;
	pwmstepud = 1;
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
#if D_IMU
	printf("inertial offset\r\n");
	printf("ax = %4d, ay = %4d, az = %4d\r\n", inertial_offset.accel.x,
			inertial_offset.accel.y, inertial_offset.accel.z);
	printf("gx = %4d, gy = %4d, gz = %4d\r\n", inertial_offset.gyro.x,
			inertial_offset.gyro.y, inertial_offset.gyro.z);
#endif
#endif

#if D_ENCODER
	printf("LENGTHPERPULSE = %u\r\n", LENGTHPERPULSE);
#endif

  /* USER CODE END 2 */

  /* Infinite loop */
  /* USER CODE BEGIN WHILE */
#if USE_LED
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
			switch (rotary_value) {
			case 0x0:
#if USE_LED
				led_rgb(1, 1, 0);	// Yellow
#endif

				sensor_initialize();

				while (enter) {
					for (unsigned char j = 0; CALIBRATIONSIZE > j; j++) {
						uint16_t analogbuf = analog[j];
						analogmax[j] =
								(analogmax[j] < analogbuf) ?
										analogbuf : analogmax[j];
						analogmin[j] =
								(analogmin[j] > analogbuf) ?
										analogbuf : analogmin[j];
#if D_ANALOG
						printf("[%2d] = ", j);
						printf("%4d", analogbuf);
						if (j != CALIBRATIONSIZE - 1) {
							printf(", ");
						} else {
							printf("\r\n");
						}
#endif
					}
					HAL_Delay(250);
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
				break;	// case 0x00:
			case 0x1:
				commonspeed = COMMONSPEED1;
				kp = KP1;
				kd = KD1;
				ki = KI1;
				running_initialize();

				while (enter) {
					d_print();
					HAL_Delay(250);
				}

				running_finalize();
#if USE_FLASH
				for (int i = 0; i < ENC_SIZE; i++) {
					flash_buffer.common_speed2[i] = (TREAD / 2)
							* (flash_buffer.svl[i] + flash_buffer.svr[i])
							/ (flash_buffer.svl[i] - flash_buffer.svr[i]);
					flash_buffer.common_speed2[i] =
							COMMONSPEED1
									+ (COMMONSPEED2 - COMMONSPEED1)
											* (flash_buffer.common_speed2[course_state_time]
													- RMIN)
											/ ((power(2,
													8
															* (sizeof(flash_buffer.common_speed2[0])))
													- 1) - RMIN);
					flash_buffer.common_speed3[i] = (TREAD / 2)
							* (flash_buffer.svl[i] + flash_buffer.svr[i])
							/ (flash_buffer.svl[i] - flash_buffer.svr[i]);
					flash_buffer.common_speed3[i] =
							COMMONSPEED1
									+ (COMMONSPEED3 - COMMONSPEED1)
											* (flash_buffer.common_speed3[course_state_time]
													- RMIN)
											/ ((power(2,
													8
															* (sizeof(flash_buffer.common_speed3[0])))
													- 1) - RMIN);
				}
				for (int i = 0; i < ENC_SIZE; i++) {
				}
				writeFlash(start_address, (uint8_t*) &flash_buffer,
						sizeof(FlashBuffer));
#endif
				break;
			case 0x2:
				commonspeed = COMMONSPEED2;
				kp = KP2;
				kd = KD2;
				ki = KI2;
#if USE_FLASH
				loadFlash(start_address, (uint8_t*) &flash_buffer,
						sizeof(FlashBuffer));
#endif
				running_initialize();

				while (enter) {
					d_print();
					HAL_Delay(250);
				}

				running_finalize();
				break;
			case 0x3:
				commonspeed = COMMONSPEED3;
				kp = KP3;
				kd = KD3;
				ki = KI3;
				running_initialize();

				while (enter) {
					d_print();
					HAL_Delay(250);
				}

				running_finalize();
				break;
			case 0xE:
#if D_MOTOR && !USE_VELOCITY_CONTROL
				kp = 0;
				kd = 0;
				ki = 0;
					HAL_Delay(3000);
					running_initialize();
					while(enter)
					{
						// MOTOR TEST
						commonspeed = PWMMAX * rotary_value / 16;
						d_print();
						HAL_Delay(250);
					}
					running_finalize();
#endif
				break;
			case 0xF:
				// load flash output
#if USE_FLASH
				// FLASH PRINT
				loadFlash(start_address, (uint8_t*) &readrom,
						sizeof(FlashBuffer));
				printf("////////// Encorder //////////\r\n");
				for (int i = 0; i < ENC_SIZE; i++) {
					printf("%2d, %4d, %4d\r\n", i, readrom.svl[i],
							readrom.svr[i]);
				}
				printf("////////// IMU //////////\r\n");
				for (int i = 0; i < ENC_SIZE; i++) {
					printf("%3d, ", i);
					IMU_printf(&readrom.inertial[i]);
				}
#endif

				while (enter) {
					HAL_Delay(250);
				}
				break;
			case 0xD:
#if USE_IMU
#if D_IMU
				/*
				 // IMU TEST
				 IMU_set_offset();
				 printf("inertial offset\r\n");
				 printf("ax = %4d, ay = %4d, az = %4d\r\n", inertial_offset.accel.x, inertial_offset.accel.y, inertial_offset.accel.z);
				 printf("gx = %4d, gy = %4d, gz = %4d\r\n", inertial_offset.gyro.x, inertial_offset.gyro.y, inertial_offset.gyro.z);
				 while(enter)
				 {
				 printf("////////// IMU ///////////\r\n");
				 IMU_read();
				 printf("ax = %4d, ay = %4d, az = %4d\r\n", inertial.accel.x - inertial_offset.accel.x, inertial.accel.y - inertial_offset.accel.y, inertial.accel.z - inertial_offset.accel.z);
				 printf("gx = %4d, gy = %4d, gz = %4d\r\n", inertial.gyro.x - inertial_offset.gyro.x, inertial.gyro.y - inertial_offset.gyro.y, inertial.gyro.z - inertial_offset.gyro.z);
				 HAL_Delay(250);
				 }
				 */
				while (enter) {
					printf("////////// IMU ///////////\r\n");
					IMU_read();
					IMU_raw_printf();
					HAL_Delay(250);
				}
#endif // D_IMU
#if !D_IMU
#endif // D_IMU
#endif
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
  htim1.Init.Period = 65535;
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
  htim3.Init.Period = 65535;
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

void set_led(char value)
{
	HAL_GPIO_WritePin(GPIOC, GPIO_PIN_8, (value & 0b01) ? GPIO_PIN_RESET : GPIO_PIN_SET);	// RIGHT
	HAL_GPIO_WritePin(GPIOB, GPIO_PIN_13, (value & 0b10) ? GPIO_PIN_RESET : GPIO_PIN_SET);	// LEFT
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
	sensor_initialize();
#if USE_VELOCITY_CONTROL
#if D_VELOCITY_CONTROL_TIMER
	stoptime = 0;
#endif
	encoder_initialize();
#endif
	timtim = 0;
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

#if D_ANALOG
#if !CSV_FORMAT
#if ATTACH_LONGSENSOR
	// use normal sensor and long sensor
	printf("\x1b[24C");	// Cursor move right *24
	printf("%4d, %4d | %4d, %4d\r\n", analog[5], analog[4], analog[3], analog[2]);
	printf("%4d, %4d, %4d, %4d, %4d, %4d | %4d, %4d, %4d, %4d, %4d, %4d\r\n", analog[9], analog[8], analog[15], analog[14], analog[7], analog[6], analog[1], analog[0], analog[13], analog[12], analog[11], analog[10]);
#else	// ATTACH_LONGSENSOR
#if !USE_LONGSENSOR
	// only use normal sensor
	printf("\x1b[24C");	// Cursor move right *24
	printf(ESC_RED);
	printf("%4d, %4d | %4d, %4d\r\n", analog[5], analog[4], analog[3],
			analog[2]);
	printf(ESC_DEF);
	printf("%4d, %4d, %4d, %4d, %4d, %4d | %4d, %4d, %4d, %4d, %4d, %4d\r\n",
			analog[9], analog[8], analog[15], analog[14], analog[7], analog[6],
			analog[1], analog[0], analog[13], analog[12], analog[11],
			analog[10]);
#else	// !USE_LONGSENSOR
	// only use long sensor
	printf("\x1b[24C");	// Cursor move right *24
	printf("%4d, %4d | %4d, %4d\r\n", analog[5], analog[4], analog[3], analog[2]);
	printf(ESC_RED);
	printf("%4d, %4d, %4d, %4d, %4d, %4d | %4d, %4d, %4d, %4d, %4d, %4d\r\n", analog[9], analog[8], analog[15], analog[14], analog[7], analog[6], analog[1], analog[0], analog[13], analog[12], analog[11], analog[10]);
	printf(ESC_DEF);
#endif	// !USE_LONGSENSOR
#endif	// ATTACH_LONGSENSOR
	printf("\r\n");
#else	// !CSV_FORMAT
	for(unsigned char i = 0; i < CALIBRATIONSIZE / 2; i++)
	{
		printf("[%2d] = ", i * 2);
		printf("%4d,", analograte[i * 2]);
	}
	for(unsigned char i = CALIBRATIONSIZE / 2; i > 0; i--)
	{
		printf("[%2d] = ", i * 2 - 1);
		printf("%4d,", analograte[i * 2 - 1]);
	}
	printf("analograte\r\n");
	printf(ESC_CYA);
	for(unsigned char i = 0; i < CALIBRATIONSIZE / 2; i++)
	{
		printf("[%2d] = ", i * 2);
		printf("%4d,", analog[i * 2]);
	}
	for(unsigned char i = CALIBRATIONSIZE / 2; i > 0; i--)
	{
		printf("[%2d] = ", i * 2 - 1);
		printf("%4d,", analog[i * 2 - 1]);
	}
	printf("analog\r\n");
	printf(ESC_RED);
	for(unsigned char i = 0; i < CALIBRATIONSIZE / 2; i++)
	{
		printf("[%2d] = ", i * 2);
		printf("%4d,", analogmax[i * 2]);
	}
	for(unsigned char i = CALIBRATIONSIZE / 2; i > 0; i--)
	{
		printf("[%2d] = ", i * 2 - 1);
		printf("%4d,", analogmax[i * 2 - 1]);
	}
	printf("analogmax\r\n");
	printf(ESC_BLU);
	for(unsigned char i = 0; i < CALIBRATIONSIZE / 2; i++)
	{
		printf("[%2d] = ", i * 2);
		printf("%4d,", analogmin[i * 2]);
	}
	for(unsigned char i = CALIBRATIONSIZE / 2; i > 0; i--)
	{
		printf("[%2d] = ", i * 2 - 1);
		printf("%4d,", analogmin[i * 2 - 1]);
	}
	printf("analogmin\r\n");
	printf(ESC_GRE);
	printf("leftmotor = %5d, rightmotor = %5d,", leftmotor, rightmotor);
	printf("analogl = %5d, analogr = %5d, direction = %5d", analogl, analogr, direction);
	printf("\r\n");
	printf(ESC_DEF);
	printf("\r\n");
#endif	// !CSV_FORMAT
#endif	// D_ANALOG

#if D_ENCODER
	printf("encoder_l = %d, encoder_r = %d \r\ndvl = %d, dvr = %d\r\n",
			encoder_l, encoder_r, dvl, dvr);
	printf("lengthl = %d, lengthr = %d \r\nvelocityl = %d, velocityr = %d\r\n",
			lengthl, lengthr, velocityl, velocityr);
#endif

#if D_PWM
	printf("pwmstepoutput = %5d, pwmsteptime = %5d, pwmstepud = %d\r\n", pwmstepoutput, pwmsteptime, pwmstepud);
#endif

#if D_ROTARY
	printf("rotary_value = %x\r\n", rotary_value);
#endif

#if D_SWITCH
	printf("enter = %d\r\n", enter);
#endif

#if D_IMU
#endif

#if USE_VELOCITY_CONTROL
//	printf("encoder_l = %5d, encoder_r = %5d\r\n", encoder_l, encoder_r);
//	printf("velocity_l = %5.3f, velocity_r = %5.3f\r\n", velocity_l, velocity_r);
#if !VELOCITY_CONTROL_RELATIVE
	printf("velocity_error = %5.3f, s_velocity_error = %5.3f\r\n",
			velocity_error_l, s_velocity_error_l);
	printf("velocity_next = %5.3f\r\n", velocity_next_l);
	printf("nextspeed = %5.3f\r\n", nextspeed_l);
	printf("leftmotor = %5.3f, rightmotor = %5.3f\r\n", leftmotor, rightmotor);
#else
//	printf("LENGTHPERPULSE = %5.3f\r\n", LENGTHPERPULSE);
	printf("encoder = %3.1f\r\nLENGTHPERPULSE = %f\r\nvelocity = %5.3f\r\nvelocity_error = %5.3f, s_velocity_error = %5.3f\r\nvelocity_next = %5.3f\r\nnextspeed = %5.3f\r\n",
			(encoder_l + encoder_r) / (double)2.0f, LENGTHPERPULSE, (velocity_l + velocity_r) / (double)2.0f, velocity_error, s_velocity_error, velocity_next, nextspeed);
#endif	// VELOCITY_CONTROL_RELARIVE
#endif
#if D_MOTOR
	printf("leftmotor = %5.3f, rightmotor = %5.3f\r\n", leftmotor, rightmotor);
#endif
}	// d_print

#if USE_IMU
void IMU_printf(Inertial *a) {
	printf("%4d, %4d, %4d, ", a->accel.x, a->accel.y, a->accel.z);
	printf("%4d, %4d, %4d\r\n", a->gyro.x, a->gyro.y, a->gyro.z);
}

void IMU_raw_printf() {
	printf("%4d, %4d, %4d, ", inertial.accel.x, inertial.accel.y,
			inertial.accel.z);
	printf("%4d, %4d, %4d\r\n", inertial.gyro.x, inertial.gyro.y,
			inertial.gyro.z);
}
#endif

void encoder_initialize() {
#if USE_VELOCITY_CONTROL
#if VELOCITY_CONTROL_RELATIVE
	s_velocity_error = 0;
#else
	s_velocity_error_l = 0;
	s_velocity_error_r = 0;
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
		}
	}
	for (unsigned char index = 0; CALIBRATIONSIZE > index; index++) {
		analogbuffers[sensgettime][index] = analograw[index];
	}
	sensgettime++;
}

#ifndef _ARM_MATH_H
double power(double a, double b) {
	double r;
	r = 1;
	for (int i = b; i > 0; i--) {
		//	r = r * a;
	}

	return r;
}
#endif

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
