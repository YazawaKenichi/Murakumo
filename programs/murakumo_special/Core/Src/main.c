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
 * MURAKUMO SPECIAL EN KAI GEI !!!!!
 *
 ******************************************************************************
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

#define D_MOTOR 1
#define D_ENCODER 0	// Debug Encoder
#define D_ROTARY 0
#define D_SWITCH 0
#define D_IMU 1
#define D_LED 0
#define D_VELOCITY_CONTROL_TIMER 0

#define USE_MOTOR 1
#define USE_ENCODER 0
#define USE_ROTARY 1
#define USE_SWITCH 1
#define USE_LED 1
#define USE_IMU 1
#define USE_VELOCITY_CONTROL 0

/* USER CODE END PD */

/* Private macro -------------------------------------------------------------*/
/* USER CODE BEGIN PM */

#define ADC_CONVERTED_DATA_BUFFER_SIZE 16	// ADC Channel Count
#define SENSGETCOUNT 9

#define ENCODER_MIDDLE (65536/2)

#ifndef _ARM_MATH_H
#define PI 3.14159265358979f
#endif	// __MAIN_H
#define TIREDIAMETER 21000		// um
#define PULSEPERROTATE (5250*2)	// Pulse / Rotate
// LENGTHPUEPULSE = PI * TIREDIAMETER / PULSEPERROTATE

#define KP1 0.01f	// 30 // 25
#define KD1 0	// 8  // 10
#define KI1 0	// 0.0005f

#define PWMMAX 1000

#define D_VELOCITY_CONTROL_IN_WHILE 0
#define VELOCITY_CONTROL_RELATIVE 1

#define VELOCITY_TARGET 750	//65.973f 	// MAX 35579 // mm/s
#define VELOCITY_MAX 35579
#define VKP 20	// 27.5f
#define VKI 0.2f	// 0.15f

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

unsigned char subsensbuf, marker, sidedeltacount, markerstate, rightmarkercount;// 0 ~ 255(2^8-1)
short int encoder_l, encoder_r;
double LENGTHPERPULSE;	// (um / pulse)

double velocity, velocity_error, s_velocity_error, velocity_next, velocity_raw;
double nextspeed;

#if USE_IMU
int degree, degree_error, s_degree, before_degree;
int TARGET_DEGREE;
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
#ifndef _ARM_MATH_H
double power(double, double);
#endif
void encoder_initialize();
void encoder_finalize();
void d_print();
#if USE_IMU
void IMU_Coordinate_printf(Coordinate*);
void IMU_Inertial_printf(Inertial*);
void IMU_Displacement_printf(Displacement*);
void IMU_print();
#endif
double low_pass_filter(double val, double pre_val, double gamma);

void HAL_TIM_PeriodElapsedCallback(TIM_HandleTypeDef *htim) {
	if (htim->Instance == TIM6) {
		if (motorenable)
		{
#if USE_IMU
			degree = displacement.theta.z;
			degree_error = TARGET_DEGREE - degree;
			s_degree = s_degree + degree;
			leftmotor = 0 - (KP1 * degree_error - KD1 * (degree - before_degree) + KI1 * s_degree);
			rightmotor = 0 + (KP1 * degree_error - KD1 * (degree - before_degree) + KI1 * s_degree);
#endif
		}
		else	// if(motorenable)
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

		__HAL_TIM_SET_COMPARE(&htim4, TIM_CHANNEL_1, leftmotor);
		__HAL_TIM_SET_COMPARE(&htim4, TIM_CHANNEL_2, rightmotor);
#endif
	}	// TIM6
	if (htim->Instance == TIM10)	// TIM10 // 0.1ms
	{
#if USE_IMU
		Inertial_Integral(&displacement);
#endif
#if USE_ENCODER
		// 1ms
		encoder_l = TIM1->CNT - ENCODER_MIDDLE;
		encoder_r = -(TIM3->CNT - ENCODER_MIDDLE);

		TIM1->CNT = ENCODER_MIDDLE;
		TIM3->CNT = ENCODER_MIDDLE;
#endif	// USE_ENCODER
#if USE_LED
		if(timtim % 10000 == 0)
		{
			set_led(0b10);
		}
		if(timtim % 10000 == 5000)
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
	enter = 0;
	motorenable = 0;
	rotary_value = 0;
	LENGTHPERPULSE = PI * TIREDIAMETER / PULSEPERROTATE;
	commonspeed = 0;

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

	printf("Starting TIM11\r\n");
	HAL_TIM_Base_Start_IT(&htim11);	// 1ms	// ROTARY SWITCH

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
#endif
#endif

#if D_ENCODER
	printf("LENGTHPERPULSE = %f\r\n", LENGTHPERPULSE);
#endif

  /* USER CODE END 2 */

  /* Infinite loop */
  /* USER CODE BEGIN WHILE */
	while (1) {
		printf("///// WHILE /////\n\r");
		printf("enter = %d\r\n", enter);
		printf("rotary_value = %x\r\n", rotary_value);
		if (enter) {
			switch (rotary_value) {
			case 0x0:
				break;	// case 0x00:
			case 0x1:
				running_initialize();

				while (enter) {
					d_print();
					HAL_Delay(250);
				}

				running_finalize();
				break;
			case 0x2:
				break;
			case 0x3:
				break;
			case 0xE:
				break;
			case 0xF:
				break;
			case 0xD:
#if USE_IMU && D_IMU
				while (enter) {
					printf("////////// IMU ///////////\r\n");
					IMU_read();
					IMU_print();
					HAL_Delay(250);
				}
#endif // D_IMU
				break;
			} // switch(rotary_value)
		}	// if(enter)
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

void running_initialize() {
#if USE_ENCODER
#if D_VELOCITY_CONTROL_TIMER
	stoptime = 0;
#endif
	encoder_initialize();
#endif
	timtim = 0;
	Coordinate_Init(&displacement.theta);
	TARGET_DEGREE = displacement.theta.z;
	before_degree = 0;
	s_degree = 0;
	printf("Encoder_Start\r\n");
	HAL_TIM_Encoder_Start(&htim1, TIM_CHANNEL_ALL);
	HAL_TIM_Encoder_Start(&htim3, TIM_CHANNEL_ALL);
	printf("ENCODER\r\n");
	HAL_TIM_Base_Start_IT(&htim10);
	leftmotor = 0;
	rightmotor = 0;
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
	HAL_TIM_Base_Stop_IT(&htim6);
	HAL_TIM_PWM_Stop(&htim4, TIM_CHANNEL_2);
	HAL_TIM_PWM_Stop(&htim4, TIM_CHANNEL_1);
	encoder_finalize();
	HAL_TIM_Base_Stop_IT(&htim10);
}

void d_print() {
	printf("////////// d_print //////////\r\n");

#if D_ENCODER
/*
	printf("encoder_l = %d, encoder_r = %d \r\ndvl = %d, dvr = %d\r\n",
			encoder_l, encoder_r, dvl, dvr);
	printf("lengthl = %d, lengthr = %d \r\nvelocityl = %d, velocityr = %d\r\n",
			lengthl, lengthr, velocityl, velocityr);
*/
	printf("TIM1->CNT = %5d, TIM3->CNT = %5d\r\nencoder_l = %5d, encoder_r = %5d\r\n", TIM1->CNT, TIM3->CNT, encoder_l, encoder_r);
#endif

#if D_ROTARY
	printf("rotary_value = %x\r\n", rotary_value);
#endif

#if D_SWITCH
	printf("enter = %d\r\n", enter);
#endif

#if D_IMU
	IMU_print();
#endif

#if D_VELOCITY_CONTROL
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
#endif	// D_VELOCITY_CONTROL

#if D_MOTOR
	printf("leftmotor = %5.3f, rightmotor = %5.3f\r\n", leftmotor, rightmotor);
#endif
}	// d_print

#if USE_IMU
void IMU_Coordinate_printf(Coordinate *a) {
	printf("%6d, %6d, %6d\r\n", a->x, a->y, a->z);
}

void IMU_Inertial_printf(Inertial *a)
{
	printf(ESC_RED);
	printf("a : ");
	IMU_Coordinate_printf(&a->accel);
	printf(ESC_YEL);
	printf("g : ");
	IMU_Coordinate_printf(&a->gyro);
	printf(ESC_DEF);
}

void IMU_Displacement_printf(Displacement *a)
{
	printf(ESC_GRE);
	printf("p : ");
	IMU_Coordinate_printf(&a->position);
	printf(ESC_BLU);
	printf("t : ");
	IMU_Coordinate_printf(&a->theta);
	printf(ESC_DEF);
}

void IMU_print()
{
	printf("\tInertial\r\n");
	IMU_Inertial_printf(&inertial);
	printf("\tDisplacement\r\n");
	IMU_Displacement_printf(&displacement);
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
