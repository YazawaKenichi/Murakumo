/* USER CODE BEGIN Header */
/**
  ******************************************************************************
  * @file           : main.c
  * @brief          : Main program body
  ******************************************************************************
  * @attention
  *
  * Copyright (c) 2022 STMicroelectronics.
  * All rights reserved.
  *
  * This software is licensed under terms that can be found in the LICENSE file
  * in the root directory of this software component.
  * If no LICENSE file comes with this software, it is provided AS-IS.
  *
  ******************************************************************************
  */
/* USER CODE END Header */
/* Includes ------------------------------------------------------------------*/
#include "main.h"

/* Private includes ----------------------------------------------------------*/
/* USER CODE BEGIN Includes */
#include "stdio.h"

/* USER CODE END Includes */

/* Private typedef -----------------------------------------------------------*/
/* USER CODE BEGIN PTD */

/* USER CODE END PTD */

/* Private define ------------------------------------------------------------*/
/* USER CODE BEGIN PD */

/* Debug Define */
#define STARTSWITCH 0
#define MOTOR_DEBUG 0
#define LED_DEBUG 0
#define BUZZER_DEBUG 0
#define ADC_DEBUG 0

#define UART_DEBUG 1
#define READ_ANALOG_SENSORS 1

#define DEBUG1 1

#ifdef __GNUC__
#define PUTCHAR_PROTOTYPE int __io_putchar(int ch)
#else
#define PUTCHAR_PROTOTYPE int fputc(int ch, FILE *f)
#endif

/* USER CODE END PD */

/* Private macro -------------------------------------------------------------*/
/* USER CODE BEGIN PM */
#define COUNTER_PERIOD_MOTOR 839
#define COUNTER_PERIOD_BUZZER 1679

#define ADC_CONVERTED_DATA_BUFFER_SIZE ((uint32_t) 4)	// ADC Channel Count
/* USER CODE END PM */

/* Private variables ---------------------------------------------------------*/
ADC_HandleTypeDef hadc1;
DMA_HandleTypeDef hdma_adc1;

TIM_HandleTypeDef htim2;
TIM_HandleTypeDef htim4;
TIM_HandleTypeDef htim6;
TIM_HandleTypeDef htim7;

UART_HandleTypeDef huart6;

/* USER CODE BEGIN PV */
uint16_t analog[ADC_CONVERTED_DATA_BUFFER_SIZE];	// Analog Data

/* USER CODE END PV */

/* Private function prototypes -----------------------------------------------*/
void SystemClock_Config(void);
static void MX_GPIO_Init(void);
static void MX_TIM4_Init(void);
static void MX_TIM2_Init(void);
static void MX_ADC1_Init(void);
static void MX_USART6_UART_Init(void);
static void MX_TIM6_Init(void);
static void MX_DMA_Init(void);
static void MX_TIM7_Init(void);
/* USER CODE BEGIN PFP */
#if UART_DEBUG
#endif
#if PRINTF_DEBUG
PUTCHAR_PROTOTYPE
{
	HAL_UART_Transmit(&huart6, (uint8_t*) &ch, 1, 0xFFFF);
	return ch;
}
#endif

/* USER CODE END PFP */

/* Private user code ---------------------------------------------------------*/
/* USER CODE BEGIN 0 */
#if READ_ANALOG_SENSORS

void read_raw()
{

}

void get_middle()
{

}

void HAL_TIM_PeriodElapsedCallback(TIM_HandleTypeDef *htim)
{
	// in Timer
	if(htim->Instance == TIM6)
	{
		// 0.1ms
		read_raw();	// Reading Raw Analog Value
	}
	if(htim->Instance == TIM7)
	{
		// 1ms
		get_middle();	// Sorting Raw Analog Value and get Median
	}
}
#endif	// READ_ANALOG_SENSORS
/* USER CODE END 0 */

/**
  * @brief  The application entry point.
  * @retval int
  */
int main(void)
{
  /* USER CODE BEGIN 1 */
	printf("\r\n\r\n\r\nStarting Program...\r\n\r\n");
	unsigned short int duty;

  /* USER CODE END 1 */

  /* MCU Configuration--------------------------------------------------------*/

  /* Reset of all peripherals, Initializes the Flash interface and the Systick. */
  HAL_Init();

  /* USER CODE BEGIN Init */


  /* USER CODE END Init */

  /* Configure the system clock */
  SystemClock_Config();

  /* USER CODE BEGIN SysInit */

  /* USER CODE END SysInit */

  /* Initialize all configured peripherals */
  MX_GPIO_Init();
  MX_TIM4_Init();
  MX_TIM2_Init();
  MX_ADC1_Init();
  MX_USART6_UART_Init();
  MX_TIM6_Init();
  MX_DMA_Init();
  MX_TIM7_Init();
  /* USER CODE BEGIN 2 */

#if STARTSWITCH
  printf("Pushing Switch for Start...\r\n");
  while(HAL_GPIO_ReadPin(GPIOC, GPIO_PIN_14))
  {
	  HAL_Delay(100);
  }
#endif

#if MOTOR_DEBUG
  printf("Starging PWM\r\n");
  if(HAL_TIM_PWM_Start(&htim4, TIM_CHANNEL_1) != HAL_OK){ Error_Handler(); };
  if(HAL_TIM_PWM_Start(&htim4, TIM_CHANNEL_2) != HAL_OK){ Error_Handler(); };
#endif

#if BUZZER_DEBUG
  printf("Starting Buzzer\r\n");
  if(HAL_TIM_PWM_Start(&htim2, TIM_CHANNEL_1) != HAL_OK){ Error_Handler(); };
#endif

#if UART_DEBUG
  char txrx[128] = "Hello, World!\r\n";
#if PRINTF_DEBUG
  int i = 0;
#endif

#elif READ_ANALOG_SENSORS	// UART_DEBUG が無効の時に実行される
  printf("Starting Analog Timer\r\n");
  HAL_TIM_Base_Start_IT(&htim6);	// 0.1ms Timer
  HAL_TIM_Base_Start_IT(&htim7);	// 1ms Timer
//  printf("Starting Analog Read\r\n");
//  if(HAL_ADC_Init(&hadc1) != HAL_OK) { Error_Handler(); }
//  if(HAL_ADCE1_Calibration_Start(&hadc1, ADC_SINGLE_ENDED) != HAL_OK) { Error_Handler(); }
//  if(HAL_ADC_ConfigChannel(&hadc1, &) != HAL_OK) { Error_Handler(); }

  printf("Starting Analog DMA\r\n");
  if(HAL_ADC_Start_DMA(&hadc1, (uint32_t *) analog, ADC_CONVERTED_DATA_BUFFER_SIZE) != HAL_OK) { Error_Handler(); }
#endif
  /* USER CODE END 2 */

  /* Infinite loop */
  /* USER CODE BEGIN WHILE */
  while (1)
  {
#if LED_DEBUG
	  printf("LED_DEBUG\r\n");
	  HAL_GPIO_WritePin(GPIOB, GPIO_PIN_13, GPIO_PIN_SET);
	  HAL_GPIO_WritePin(GPIOC, GPIO_PIN_8, GPIO_PIN_RESET);
	  HAL_Delay(600);

	  HAL_GPIO_WritePin(GPIOB, GPIO_PIN_13, GPIO_PIN_RESET);
	  HAL_GPIO_WritePin(GPIOC, GPIO_PIN_8, GPIO_PIN_SET);
	  HAL_Delay(600);
#endif

#if MOTOR_DEBUG
	  printf("MOTOR_DEBUG\r\n");
	  // モータを正転
	  HAL_GPIO_WritePin(GPIOD, GPIO_PIN_2, GPIO_PIN_SET);
	  HAL_GPIO_WritePin(GPIOC, GPIO_PIN_13, GPIO_PIN_SET);

	  // モータを回転
	  duty = 20;
	  __HAL_TIM_SET_COMPARE(&htim4, TIM_CHANNEL_1, (int) duty * COUNTER_PERIOD_MOTOR / 100);
	  __HAL_TIM_SET_COMPARE(&htim4, TIM_CHANNEL_2, (int) duty * COUNTER_PERIOD_MOTOR / 100);

	  HAL_Delay(2000);

	  // モータの停止
	  duty = 0;
	  __HAL_TIM_SET_COMPARE(&htim4, TIM_CHANNEL_1, (int) duty * COUNTER_PERIOD_MOTOR / 100);
	  __HAL_TIM_SET_COMPARE(&htim4, TIM_CHANNEL_2, (int) duty * COUNTER_PERIOD_MOTOR / 100);

	  HAL_Delay(2000);

	  // モータを�??転
	  HAL_GPIO_WritePin(GPIOD, GPIO_PIN_2, GPIO_PIN_RESET);
	  HAL_GPIO_WritePin(GPIOC, GPIO_PIN_13, GPIO_PIN_RESET);

	  // モータを回転
	  duty = 20;
	  __HAL_TIM_SET_COMPARE(&htim4, TIM_CHANNEL_1, (int) duty * COUNTER_PERIOD_MOTOR / 100);
	  __HAL_TIM_SET_COMPARE(&htim4, TIM_CHANNEL_2, (int) duty * COUNTER_PERIOD_MOTOR / 100);

	  HAL_Delay(2000);

	  // モータの停止
	  duty = 0;
	  __HAL_TIM_SET_COMPARE(&htim4, TIM_CHANNEL_1, (int) duty * COUNTER_PERIOD_MOTOR / 100);
	  __HAL_TIM_SET_COMPARE(&htim4, TIM_CHANNEL_2, (int) duty * COUNTER_PERIOD_MOTOR / 100);

	  HAL_Delay(2000);

#endif

#if BUZZER_DEBUG
	  printf("BUZZER_DEBUG\r\n");
	  duty = 20;
	  __HAL_TIM_SET_COMPARE(&htim2, TIM_CHANNEL_2, (int) duty * COUNTER_PERIOD_MOTOR / 100);
	  HAL_Delay(500);
	  duty = 0;
	  __HAL_TIM_SET_COMPARE(&htim2, TIM_CHANNEL_2, (int) duty * COUNTER_PERIOD_MOTOR / 100);
	  HAL_Delay(500);

	  duty = 20;
	  __HAL_TIM_SET_COMPARE(&htim2, TIM_CHANNEL_2, (int) duty * COUNTER_PERIOD_MOTOR / 100);
	  HAL_Delay(500);
	  duty = 0;
	  __HAL_TIM_SET_COMPARE(&htim2, TIM_CHANNEL_2, (int) duty * COUNTER_PERIOD_MOTOR / 100);
	  HAL_Delay(500);

	  duty = 20;
	  __HAL_TIM_SET_COMPARE(&htim2, TIM_CHANNEL_2, (int) duty * COUNTER_PERIOD_MOTOR / 100);
	  HAL_Delay(500);
	  duty = 0;
	  __HAL_TIM_SET_COMPARE(&htim2, TIM_CHANNEL_2, (int) duty * COUNTER_PERIOD_MOTOR / 100);
	  HAL_Delay(500);

	  duty = 20;
	  __HAL_TIM_SET_COMPARE(&htim2, TIM_CHANNEL_2, (int) duty * COUNTER_PERIOD_MOTOR / 100);
	  HAL_Delay(500);
	  duty = 0;
	  __HAL_TIM_SET_COMPARE(&htim2, TIM_CHANNEL_2, (int) duty * COUNTER_PERIOD_MOTOR / 100);
	  HAL_Delay(500);

	  duty = 20;
	  __HAL_TIM_SET_COMPARE(&htim2, TIM_CHANNEL_2, (int) duty * COUNTER_PERIOD_MOTOR / 100);
	  HAL_Delay(500);
	  duty = 0;
	  __HAL_TIM_SET_COMPARE(&htim2, TIM_CHANNEL_2, (int) duty * COUNTER_PERIOD_MOTOR / 100);
	  HAL_Delay(500);
#endif

#if UART_DEBUG
	  HAL_UART_Transmit(&huart6, (uint8_t*)txrx, sizeof(txrx), 0xFFFF);
//	  HAL_UART_Transmit(&huart6, (uint8_t*)txrx, sizeof(txrx), 0xFFFF);
//	  HAL_UART_Receive(&huart6, (uint8_t*)txrx, sizeof(txrx), 0xFFFF);
#if PRINTF_DEBUG
	  printf("Printf Count %d\r\n", i);
	  if(i >= 10000)
	  {
		  i = 0;
	  }
	  else
	  {
		  i++;
	  }
	  HAL_Delay(1000);
#endif
#endif

#if ADC_DEBUG
	  for(int channel = 0; channel < ADC_CONVERTED_DATA_BUFFER_SIZE; channel++)
	  {
		  printf("ADC CH%2d Value is %d\r\n", channel, analog[channel]);
	  }

	  HAL_Delay(500);
#endif
    /* USER CODE END WHILE */

    /* USER CODE BEGIN 3 */
  }
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
  RCC_OscInitStruct.OscillatorType = RCC_OSCILLATORTYPE_HSI;
  RCC_OscInitStruct.HSIState = RCC_HSI_ON;
  RCC_OscInitStruct.HSICalibrationValue = RCC_HSICALIBRATION_DEFAULT;
  RCC_OscInitStruct.PLL.PLLState = RCC_PLL_ON;
  RCC_OscInitStruct.PLL.PLLSource = RCC_PLLSOURCE_HSI;
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
  hadc1.Init.NbrOfConversion = 4;
  hadc1.Init.DMAContinuousRequests = ENABLE;
  hadc1.Init.EOCSelection = ADC_EOC_SINGLE_CONV;
  if (HAL_ADC_Init(&hadc1) != HAL_OK)
  {
    Error_Handler();
  }
  /** Configure for the selected ADC regular channel its corresponding rank in the sequencer and its sample time.
  */
  sConfig.Channel = ADC_CHANNEL_7;
  sConfig.Rank = 1;
  sConfig.SamplingTime = ADC_SAMPLETIME_3CYCLES;
  if (HAL_ADC_ConfigChannel(&hadc1, &sConfig) != HAL_OK)
  {
    Error_Handler();
  }
  /** Configure for the selected ADC regular channel its corresponding rank in the sequencer and its sample time.
  */
  sConfig.Rank = 2;
  if (HAL_ADC_ConfigChannel(&hadc1, &sConfig) != HAL_OK)
  {
    Error_Handler();
  }
  /** Configure for the selected ADC regular channel its corresponding rank in the sequencer and its sample time.
  */
  sConfig.Rank = 3;
  if (HAL_ADC_ConfigChannel(&hadc1, &sConfig) != HAL_OK)
  {
    Error_Handler();
  }
  /** Configure for the selected ADC regular channel its corresponding rank in the sequencer and its sample time.
  */
  sConfig.Rank = 4;
  if (HAL_ADC_ConfigChannel(&hadc1, &sConfig) != HAL_OK)
  {
    Error_Handler();
  }
  /* USER CODE BEGIN ADC1_Init 2 */

  /* USER CODE END ADC1_Init 2 */

}

/**
  * @brief TIM2 Initialization Function
  * @param None
  * @retval None
  */
static void MX_TIM2_Init(void)
{

  /* USER CODE BEGIN TIM2_Init 0 */

  /* USER CODE END TIM2_Init 0 */

  TIM_MasterConfigTypeDef sMasterConfig = {0};
  TIM_OC_InitTypeDef sConfigOC = {0};

  /* USER CODE BEGIN TIM2_Init 1 */

  /* USER CODE END TIM2_Init 1 */
  htim2.Instance = TIM2;
  htim2.Init.Prescaler = 1;
  htim2.Init.CounterMode = TIM_COUNTERMODE_UP;
  htim2.Init.Period = 1679;
  htim2.Init.ClockDivision = TIM_CLOCKDIVISION_DIV1;
  htim2.Init.AutoReloadPreload = TIM_AUTORELOAD_PRELOAD_DISABLE;
  if (HAL_TIM_PWM_Init(&htim2) != HAL_OK)
  {
    Error_Handler();
  }
  sMasterConfig.MasterOutputTrigger = TIM_TRGO_RESET;
  sMasterConfig.MasterSlaveMode = TIM_MASTERSLAVEMODE_DISABLE;
  if (HAL_TIMEx_MasterConfigSynchronization(&htim2, &sMasterConfig) != HAL_OK)
  {
    Error_Handler();
  }
  sConfigOC.OCMode = TIM_OCMODE_PWM1;
  sConfigOC.Pulse = 0;
  sConfigOC.OCPolarity = TIM_OCPOLARITY_HIGH;
  sConfigOC.OCFastMode = TIM_OCFAST_DISABLE;
  if (HAL_TIM_PWM_ConfigChannel(&htim2, &sConfigOC, TIM_CHANNEL_1) != HAL_OK)
  {
    Error_Handler();
  }
  /* USER CODE BEGIN TIM2_Init 2 */

  /* USER CODE END TIM2_Init 2 */
  HAL_TIM_MspPostInit(&htim2);

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
  htim4.Init.Prescaler = 1;
  htim4.Init.CounterMode = TIM_COUNTERMODE_UP;
  htim4.Init.Period = 839;
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
  htim6.Init.Prescaler = 1;
  htim6.Init.CounterMode = TIM_COUNTERMODE_UP;
  htim6.Init.Period = 8399;
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
  * @brief TIM7 Initialization Function
  * @param None
  * @retval None
  */
static void MX_TIM7_Init(void)
{

  /* USER CODE BEGIN TIM7_Init 0 */

  /* USER CODE END TIM7_Init 0 */

  TIM_MasterConfigTypeDef sMasterConfig = {0};

  /* USER CODE BEGIN TIM7_Init 1 */

  /* USER CODE END TIM7_Init 1 */
  htim7.Instance = TIM7;
  htim7.Init.Prescaler = 1;
  htim7.Init.CounterMode = TIM_COUNTERMODE_UP;
  htim7.Init.Period = 8399;
  htim7.Init.AutoReloadPreload = TIM_AUTORELOAD_PRELOAD_DISABLE;
  if (HAL_TIM_Base_Init(&htim7) != HAL_OK)
  {
    Error_Handler();
  }
  sMasterConfig.MasterOutputTrigger = TIM_TRGO_RESET;
  sMasterConfig.MasterSlaveMode = TIM_MASTERSLAVEMODE_DISABLE;
  if (HAL_TIMEx_MasterConfigSynchronization(&htim7, &sMasterConfig) != HAL_OK)
  {
    Error_Handler();
  }
  /* USER CODE BEGIN TIM7_Init 2 */

  /* USER CODE END TIM7_Init 2 */

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
  /* DMA2_Stream4_IRQn interrupt configuration */
  HAL_NVIC_SetPriority(DMA2_Stream4_IRQn, 0, 0);
  HAL_NVIC_EnableIRQ(DMA2_Stream4_IRQn);

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
  __HAL_RCC_GPIOA_CLK_ENABLE();
  __HAL_RCC_GPIOB_CLK_ENABLE();
  __HAL_RCC_GPIOD_CLK_ENABLE();

  /*Configure GPIO pin Output Level */
  HAL_GPIO_WritePin(GPIOC, DRV2_PH_Pin|LED_White_Pin|LED_B_Pin, GPIO_PIN_RESET);

  /*Configure GPIO pin Output Level */
  HAL_GPIO_WritePin(LED_RED_GPIO_Port, LED_RED_Pin, GPIO_PIN_RESET);

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

  /*Configure GPIO pins : SW1_Pin Rotary2_Pin Rotary8_Pin Rotary1_Pin */
  GPIO_InitStruct.Pin = SW1_Pin|Rotary2_Pin|Rotary8_Pin|Rotary1_Pin;
  GPIO_InitStruct.Mode = GPIO_MODE_INPUT;
  GPIO_InitStruct.Pull = GPIO_NOPULL;
  HAL_GPIO_Init(GPIOC, &GPIO_InitStruct);

  /*Configure GPIO pins : SubSens1_Pin SubSens2_Pin */
  GPIO_InitStruct.Pin = SubSens1_Pin|SubSens2_Pin;
  GPIO_InitStruct.Mode = GPIO_MODE_INPUT;
  GPIO_InitStruct.Pull = GPIO_NOPULL;
  HAL_GPIO_Init(GPIOB, &GPIO_InitStruct);

  /*Configure GPIO pin : LED_RED_Pin */
  GPIO_InitStruct.Pin = LED_RED_Pin;
  GPIO_InitStruct.Mode = GPIO_MODE_OUTPUT_PP;
  GPIO_InitStruct.Pull = GPIO_NOPULL;
  GPIO_InitStruct.Speed = GPIO_SPEED_FREQ_LOW;
  HAL_GPIO_Init(LED_RED_GPIO_Port, &GPIO_InitStruct);

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

  /*Configure GPIO pin : DRV1_PH_Pin */
  GPIO_InitStruct.Pin = DRV1_PH_Pin;
  GPIO_InitStruct.Mode = GPIO_MODE_OUTPUT_PP;
  GPIO_InitStruct.Pull = GPIO_NOPULL;
  GPIO_InitStruct.Speed = GPIO_SPEED_FREQ_LOW;
  HAL_GPIO_Init(DRV1_PH_GPIO_Port, &GPIO_InitStruct);

}

/* USER CODE BEGIN 4 */
#if ANALOG_READ_REFERENCE_USECASE
HAL_ADC_ConvHalfCpltCallback(ADC_HandleTypeDef* hadc)	// ADC End then Callback
{
	printf("ADC CH1 Value is %d\r\n", analog[0]);
	printf("ADC CH2 Value is %d\r\n", analog[1]);
}
#endif

#if ANALOG_READ_RERO_USECASE
void HAL_ADC_ConvCpltCallback(ADC_HandleTypeDef* AdcHandle)
{
	// ADC END Program
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
  while (1)
  {
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

