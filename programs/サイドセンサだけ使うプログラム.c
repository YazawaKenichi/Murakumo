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
#ifdef __GNUC__
#define PUTCHAR_PROTOTYPE int __io_putchar(int ch)
#else
#define PUTCHAR_PROTOTYPE int fputc(int ch, FILE *f)
#endif

#define D_ANALOG 0
#define D_MOTOR 0
#define D_SIDESENS 1
#define STEP_EXECUTION 0
#define ATTACH_LONGSENSOR 0	// use normal sensor and long sensor
#define USE_LONGSENSOR 0	// only use long sensor
#define CSV_FORMAT 1	//

/* USER CODE END PD */

/* Private macro -------------------------------------------------------------*/
/* USER CODE BEGIN PM */
#define ADC_CONVERTED_DATA_BUFFER_SIZE 16	// ADC Channel Count
#define SENSGETCOUNT 9

#define COMMONSPEED 750
#define KPL 25
#define KPR 25
#define KDL 10
#define KDR 10

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

TIM_HandleTypeDef htim4;
TIM_HandleTypeDef htim6;
TIM_HandleTypeDef htim7;
TIM_HandleTypeDef htim10;
TIM_HandleTypeDef htim11;
TIM_HandleTypeDef htim13;

UART_HandleTypeDef huart6;

/* USER CODE BEGIN PV */
// analog
uint16_t analograw[ADC_CONVERTED_DATA_BUFFER_SIZE] = {0};	// Analog Data

#if ATTACH_LONGSENSOR	// use normal sensor and long sensor
#define CALIBRATIONSIZE 16
#else
#if USE_LONGSENSOR	// only use long sensor
#define CALIBRATIONSIZE 4
#else
#define CALIBRATIONSIZE 12
#endif
#endif

uint16_t analog[CALIBRATIONSIZE] = {0};
uint16_t analogmax[CALIBRATIONSIZE];
uint16_t analogmin[CALIBRATIONSIZE];
uint16_t analogbuffers[SENSGETCOUNT][CALIBRATIONSIZE];

uint16_t analograte[CALIBRATIONSIZE] = {0};
uint16_t analogr, analogl;	// Sum Right Analog Sensor, Sum Left Analog Sensor
int direction, beforedirection = 0;	// = analogr - analogl
unsigned char sensgettime;

char subsensr, subsensl;

// motor
uint16_t commonspeed = COMMONSPEED;

int leftmotor = 0;
int rightmotor = 0;

// switch
uint8_t rotaryvalue = 0;

// flag
uint8_t motorenable = 0;
uint8_t analogskipflg = 1;

/* USER CODE END PV */

/* Private function prototypes -----------------------------------------------*/
void SystemClock_Config(void);
static void MX_GPIO_Init(void);
static void MX_DMA_Init(void);
static void MX_ADC1_Init(void);
static void MX_USART6_UART_Init(void);
static void MX_TIM6_Init(void);
static void MX_TIM4_Init(void);
static void MX_TIM7_Init(void);
static void MX_TIM10_Init(void);
static void MX_TIM11_Init(void);
static void MX_TIM13_Init(void);
/* USER CODE BEGIN PFP */
PUTCHAR_PROTOTYPE
{
	HAL_UART_Transmit(&huart6, (uint8_t*) &ch, 1, 0xFFFF);
	return ch;
}

void HAL_ADC_ConvCpltCallback(ADC_HandleTypeDef* AdcHandle)
{
	// ADC END Program
}

uint8_t rotary_read();
void led_rgb(char r, char g, char b);

void HAL_TIM_PeriodElapsedCallback(TIM_HandleTypeDef *htim)
{
	if(htim->Instance == TIM6)	// TIM6	// 2ms
	{
#if PLAY
	  // Analog Process
	  // https://github.com/YazawaKenichi/Murakumo/blob/main/circuit/cube_v2/README.md
		if(motorenable)
		{
		  analogl = 0;
		  analogr = 0;
		  for(unsigned char i = 0; i < CALIBRATIONSIZE; i++)
		  {
			uint16_t analogbuf = analog[i];
	//	    analogmax[i] = (analogmax[i] < analogbuf) ? analogbuf : analogmax[i];
	//	    analogmin[i] = (analogmin[i] > analogbuf) ? analogbuf : analogmin[i];
			if(analogmax[i] < analogbuf)
			{
				analogmax[i] = analogbuf;
			}
			if(analogmin[i] > analogbuf)
			{
				analogmin[i] = analogbuf;
			}

			if(analogmin[i] != analogmax[i])
			{
				analograte[i] = ((analogbuf - analogmin[i]) * 1000) / (analogmax[i] - analogmin[i]);
			}

			if(i % 2 == 0)
			{
			  analogl += analograte[i];
			}
			else
			{
			  analogr += analograte[i];
			}
		  }
		  direction = (analogl - analogr);	// difference
		  leftmotor = commonspeed - direction / CALIBRATIONSIZE / 2 * KPL - (direction - beforedirection) * KDL;
		  rightmotor = commonspeed + direction / CALIBRATIONSIZE / 2 * KPR + (direction - beforedirection) * KDR;
		  beforedirection = direction;

		  if(leftmotor < 0)
		  {
			  HAL_GPIO_WritePin(GPIOD, GPIO_PIN_2, GPIO_PIN_SET);
			  leftmotor *= -1;
		  }
		  else
		  {
			  HAL_GPIO_WritePin(GPIOD, GPIO_PIN_2, GPIO_PIN_RESET);
		  }
		  if(rightmotor < 0)
		  {
			  HAL_GPIO_WritePin(GPIOC, GPIO_PIN_13, GPIO_PIN_RESET);
			  rightmotor *= -1;
		  }
		  else
		  {
			  HAL_GPIO_WritePin(GPIOC, GPIO_PIN_13, GPIO_PIN_SET);
		  }
		  leftmotor = leftmotor > 1000 ? 1000 : leftmotor;
		  rightmotor = rightmotor > 1000 ? 1000 : rightmotor;
		  __HAL_TIM_SET_COMPARE(&htim4, TIM_CHANNEL_1, leftmotor);
		  __HAL_TIM_SET_COMPARE(&htim4, TIM_CHANNEL_2, rightmotor);
		}
		else
		{
			  __HAL_TIM_SET_COMPARE(&htim4, TIM_CHANNEL_1, 0);
			  __HAL_TIM_SET_COMPARE(&htim4, TIM_CHANNEL_2, 0);
		}
#endif
	}
	if(htim->Instance == TIM7)	// TIM7 // 0.1ms
	{
	  if(sensgettime >= SENSGETCOUNT)
	  {
	    sensgettime = 0;
	  }
	  for(unsigned char index = 0; CALIBRATIONSIZE > index; index++)
	  {
	    analogbuffers[sensgettime][index] = analograw[index];
	  }
	}
	if(htim->Instance == TIM11)	// TIM11 // 1ms
	{
		for(unsigned char index = 0; index < CALIBRATIONSIZE; index++)
		{
			for(unsigned char count = 0; count < SENSGETCOUNT; count++)
			{
				for(unsigned char alphaindex = 0; alphaindex > count; alphaindex--)
				{
					uint16_t analogbuffer = analogbuffers[alphaindex - 1][index];
					analogbuffers[alphaindex - 1][index] = analogbuffers[alphaindex][index];
					analogbuffers[alphaindex][index] = analogbuffer;
				}
			}
		}
		for(unsigned char i = 0; CALIBRATIONSIZE > i; i++)
		{
			analog[i] = analogbuffers[SENSGETCOUNT / 2][i];
		}
	}
	if(htim->Instance == TIM13)	// TIM13 // 1ms
	{
	}
	if(htim->Instance == TIM10)	// TIM10 // 1ms
	{
		// SubSensor Controller
		subsensl = !HAL_GPIO_ReadPin(GPIOB, GPIO_PIN_11) ? 1 : 0;
		subsensr = !HAL_GPIO_ReadPin(GPIOB, GPIO_PIN_2) ? 1 : 0;

		// Switch Controller
		rotaryvalue = rotary_read();
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
  motorenable = 0;

  

  for(unsigned char i = 0; CALIBRATIONSIZE > i; i++)
  {
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
  MX_TIM7_Init();
  MX_TIM10_Init();
  MX_TIM11_Init();
  MX_TIM13_Init();
  /* USER CODE BEGIN 2 */
  printf(ESC_DEF);
	printf("\r\n\r\n\r\nStarting Program...\r\n\r\n");


	printf("Push Switch ...\r\n");
	led_rgb(1, 0, 0);	// Red
	while(HAL_GPIO_ReadPin(GPIOC, GPIO_PIN_14))
	{
	  HAL_Delay(100);
	}

	printf("Starting TIM4 as PWM Generation\r\n");
	HAL_TIM_PWM_Start(&htim4, TIM_CHANNEL_1);	// 50kHz (0.02ms)
	HAL_TIM_PWM_Start(&htim4, TIM_CHANNEL_2);
	printf("Starting TIM6\r\n");
	HAL_TIM_Base_Start_IT(&htim6);	// 1ms
	printf("Starting TIM7\r\n");
	HAL_TIM_Base_Start(&htim7);	// 0.1ms

	printf("Starting Analog Read\r\n");
	if(HAL_ADC_Init(&hadc1) != HAL_OK) { Error_Handler(); }
//  if(HAL_ADCE1_Calibration_Start(&hadc1, ADC_SINGLE_ENDED) != HAL_OK) { Error_Handler(); }	// never
//	if(HAL_ADC_ConfigChannel(&hadc1, &sConfig) != HAL_OK) { Error_Handler(); }

	printf("Starting Analog DMA\r\n");
	if(HAL_ADC_Start_DMA(&hadc1, (uint32_t *) analog, ADC_CONVERTED_DATA_BUFFER_SIZE) != HAL_OK) { Error_Handler(); }

	printf("Push SW2 to Calibration...\r\n");
	led_rgb(1, 1, 0);	// Yellow
	while(HAL_GPIO_ReadPin(GPIOC, GPIO_PIN_15))
	{
		HAL_Delay(100);
	}
	printf("Push SW1 to End Calibrating...\r\n");
	// https://github.com/YazawaKenichi/Murakumo/blob/main/circuit/cube_v2/README.md
	printf(ESC_MAG);
	while(HAL_GPIO_ReadPin(GPIOC, GPIO_PIN_14))
	{
		for(unsigned char j = 0; CALIBRATIONSIZE > j; j++)
		{
			uint16_t analogbuf = analog[j];
			analogmax[j] = (analogmax[j] < analogbuf) ? analogbuf : analogmax[j];
			analogmin[j] = (analogmin[j] > analogbuf) ? analogbuf : analogmin[j];
#if D_MOTOR
			printf("[%2d] = ", j);
			printf("%4d,", analogbuf);
#endif
		}
		printf("\r\n");
	}

#if D_MOTOR
	printf(ESC_YEL);
	for(unsigned char j = 0; CALIBRATIONSIZE > j; j++)
	{
			printf("[%2d] = ", j);
			printf("%4d,", analogmax[j]);
	}
	printf("\r\n");
	printf(ESC_CYA);
	for(unsigned char j = 0; CALIBRATIONSIZE > j; j++)
	{
			printf("[%2d] = ", j);
			printf("%4d,", analogmin[j]);
	}
	printf("\r\n");
	printf(ESC_DEF);
	for(unsigned char i = 0; 5 * CALIBRATIONSIZE > i; i++)
	{
		printf("v");
	}
	printf("\r\n");
	printf(ESC_YEL);
	for(unsigned char i = 0; i < CALIBRATIONSIZE / 2; i++)
	{
	  printf("[%2d] = ", i * 2);
	  printf("%4d, ", analogmax[i * 2]);
	}
	for(unsigned char i = CALIBRATIONSIZE / 2; i > 0; i--)
	{
	  printf("[%2d] = ", i * 2 - 1);
	  printf("%4d,", analogmax[i * 2 - 1]);
	}
	printf("\r\n");
	printf(ESC_CYA);
	for(unsigned char i = 0; i < CALIBRATIONSIZE / 2; i++)
	{
	  printf("[%2d] = ", i * 2);
	  printf("%4d, ", analogmin[i * 2]);
	}
	for(unsigned char i = CALIBRATIONSIZE / 2; i > 0; i--)
	{
	  printf("[%2d] = ", i * 2 - 1);
	  printf("%4d,", analogmin[i * 2 - 1]);
	}
	printf("\r\n");
#endif
	printf(ESC_DEF);

	printf("Push SW2 to Start...\r\n");
	led_rgb(1, 1, 0);	// Yellow
	while(HAL_GPIO_ReadPin(GPIOC, GPIO_PIN_15))
	{
		HAL_Delay(100);
	}
	led_rgb(1, 1, 1);
	HAL_Delay(3000);
	motorenable = 1;
  /* USER CODE END 2 */

  /* Infinite loop */
  /* USER CODE BEGIN WHILE */
  printf("\r\n==================== while ====================\r\n");
  led_rgb(1, 1, 1);	// White
  while (1)
  {
#if D_MOTOR
#if !CSV_FORMAT
#if ATTACH_LONGSENSOR
	  // use normal sensor and long sensor
	  printf("\x1b[24C");	// Cursor move right *24
	  printf("%4d, %4d | %4d, %4d\r\n", analog[5], analog[4], analog[3], analog[2]);
	  printf("%4d, %4d, %4d, %4d, %4d, %4d | %4d, %4d, %4d, %4d, %4d, %4d\r\n", analog[9], analog[8], analog[15], analog[14], analog[7], analog[6], analog[1], analog[0], analog[13], analog[12], analog[11], analog[10]);
#else
#if !USE_LONGSENSOR
	  // only use normal sensor
	  printf("\x1b[24C");	// Cursor move right *24
	  printf(ESC_RED);
	  printf("%4d, %4d | %4d, %4d\r\n", analog[5], analog[4], analog[3], analog[2]);
	  printf(ESC_DEF);
	  printf("%4d, %4d, %4d, %4d, %4d, %4d | %4d, %4d, %4d, %4d, %4d, %4d\r\n", analog[9], analog[8], analog[15], analog[14], analog[7], analog[6], analog[1], analog[0], analog[13], analog[12], analog[11], analog[10]);
#else
	  // only use long sensor
	  printf("\x1b[24C");	// Cursor move right *24
	  printf("%4d, %4d | %4d, %4d\r\n", analog[5], analog[4], analog[3], analog[2]);
	  printf(ESC_RED);
	  printf("%4d, %4d, %4d, %4d, %4d, %4d | %4d, %4d, %4d, %4d, %4d, %4d\r\n", analog[9], analog[8], analog[15], analog[14], analog[7], analog[6], analog[1], analog[0], analog[13], analog[12], analog[11], analog[10]);
	  printf(ESC_DEF);
#endif
#endif
	  printf("\r\n");
#if D_MOTOR
	  printf(" analogl = %5d, analogr = %5d, direction = %6d\r\n", analogl, analogr, analogl - analogr);
	  printf(" MotL = ");
	  if(leftmotor < 0)
	  {
		  printf("-");
	  }
	  else
	  {
		  printf(" ");
	  }
	  printf("%5d, MotR = ", leftmotor);
	  if(rightmotor < 0)
	  {
		  printf("-");
	  }
	  else
	  {
		  printf(" ");
	  }
	  printf("%5d\r\n", rightmotor);
#endif
	  printf("\r\n");
#else
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
#endif

#endif
#if D_SIDESENS
	  printf("%5d, %5d\r\n", subsensl, subsensr);
#endif

	  HAL_Delay(250);

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
  sConfig.Channel = ADC_CHANNEL_14;
  sConfig.Rank = 5;
  if (HAL_ADC_ConfigChannel(&hadc1, &sConfig) != HAL_OK)
  {
    Error_Handler();
  }
  /** Configure for the selected ADC regular channel its corresponding rank in the sequencer and its sample time.
  */
  sConfig.Channel = ADC_CHANNEL_15;
  sConfig.Rank = 6;
  if (HAL_ADC_ConfigChannel(&hadc1, &sConfig) != HAL_OK)
  {
    Error_Handler();
  }
  /** Configure for the selected ADC regular channel its corresponding rank in the sequencer and its sample time.
  */
  sConfig.Channel = ADC_CHANNEL_12;
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
  htim4.Init.Prescaler = 0;
  htim4.Init.CounterMode = TIM_COUNTERMODE_UP;
  htim4.Init.Period = 3359;
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
  htim6.Init.Prescaler = 2;
  htim6.Init.CounterMode = TIM_COUNTERMODE_UP;
  htim6.Init.Period = 55999;
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
  htim7.Init.Prescaler = 2;
  htim7.Init.CounterMode = TIM_COUNTERMODE_UP;
  htim7.Init.Period = 55999;
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
  htim10.Init.Prescaler = 2;
  htim10.Init.CounterMode = TIM_COUNTERMODE_UP;
  htim10.Init.Period = 55999;
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
  htim11.Init.Prescaler = 2;
  htim11.Init.CounterMode = TIM_COUNTERMODE_UP;
  htim11.Init.Period = 55999;
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
  * @brief TIM13 Initialization Function
  * @param None
  * @retval None
  */
static void MX_TIM13_Init(void)
{

  /* USER CODE BEGIN TIM13_Init 0 */

  /* USER CODE END TIM13_Init 0 */

  /* USER CODE BEGIN TIM13_Init 1 */

  /* USER CODE END TIM13_Init 1 */
  htim13.Instance = TIM13;
  htim13.Init.Prescaler = 2;
  htim13.Init.CounterMode = TIM_COUNTERMODE_UP;
  htim13.Init.Period = 55999;
  htim13.Init.ClockDivision = TIM_CLOCKDIVISION_DIV1;
  htim13.Init.AutoReloadPreload = TIM_AUTORELOAD_PRELOAD_DISABLE;
  if (HAL_TIM_Base_Init(&htim13) != HAL_OK)
  {
    Error_Handler();
  }
  /* USER CODE BEGIN TIM13_Init 2 */

  /* USER CODE END TIM13_Init 2 */

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
  HAL_GPIO_WritePin(LED_Red_GPIO_Port, LED_Red_Pin, GPIO_PIN_RESET);

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

  /*Configure GPIO pins : SW1_Pin SW2_Pin */
  GPIO_InitStruct.Pin = SW1_Pin|SW2_Pin;
  GPIO_InitStruct.Mode = GPIO_MODE_INPUT;
  GPIO_InitStruct.Pull = GPIO_NOPULL;
  HAL_GPIO_Init(GPIOC, &GPIO_InitStruct);

  /*Configure GPIO pin : SW3_Pin */
  GPIO_InitStruct.Pin = SW3_Pin;
  GPIO_InitStruct.Mode = GPIO_MODE_INPUT;
  GPIO_InitStruct.Pull = GPIO_NOPULL;
  HAL_GPIO_Init(SW3_GPIO_Port, &GPIO_InitStruct);

  /*Configure GPIO pins : SubSens1_Pin SubSens2_Pin */
  GPIO_InitStruct.Pin = SubSens1_Pin|SubSens2_Pin;
  GPIO_InitStruct.Mode = GPIO_MODE_INPUT;
  GPIO_InitStruct.Pull = GPIO_NOPULL;
  HAL_GPIO_Init(GPIOB, &GPIO_InitStruct);

  /*Configure GPIO pin : LED_Red_Pin */
  GPIO_InitStruct.Pin = LED_Red_Pin;
  GPIO_InitStruct.Mode = GPIO_MODE_OUTPUT_PP;
  GPIO_InitStruct.Pull = GPIO_NOPULL;
  GPIO_InitStruct.Speed = GPIO_SPEED_FREQ_LOW;
  HAL_GPIO_Init(LED_Red_GPIO_Port, &GPIO_InitStruct);

  /*Configure GPIO pins : LED_G_Pin LED_R_Pin */
  GPIO_InitStruct.Pin = LED_G_Pin|LED_R_Pin;
  GPIO_InitStruct.Mode = GPIO_MODE_OUTPUT_PP;
  GPIO_InitStruct.Pull = GPIO_NOPULL;
  GPIO_InitStruct.Speed = GPIO_SPEED_FREQ_LOW;
  HAL_GPIO_Init(GPIOA, &GPIO_InitStruct);

  /*Configure GPIO pin : DRV1_PH_Pin */
  GPIO_InitStruct.Pin = DRV1_PH_Pin;
  GPIO_InitStruct.Mode = GPIO_MODE_OUTPUT_PP;
  GPIO_InitStruct.Pull = GPIO_NOPULL;
  GPIO_InitStruct.Speed = GPIO_SPEED_FREQ_LOW;
  HAL_GPIO_Init(DRV1_PH_GPIO_Port, &GPIO_InitStruct);

}

/* USER CODE BEGIN 4 */

uint8_t rotary_read()
{
	uint8_t _rotaryvalue = 0;
	_rotaryvalue += (HAL_GPIO_ReadPin(GPIOC, GPIO_PIN_12)) ? 0 : 1;	// Rotary1
	_rotaryvalue += (HAL_GPIO_ReadPin(GPIOC, GPIO_PIN_10)) ? 0 : 1;	// Rotary2
	_rotaryvalue += (HAL_GPIO_ReadPin(GPIOA, GPIO_PIN_12)) ? 0 : 1;	// Rotary4
	_rotaryvalue += (HAL_GPIO_ReadPin(GPIOC, GPIO_PIN_11)) ? 0 : 1;	// Rotary8
	return _rotaryvalue;
}

void led_rgb(char r, char g, char b)
{
	  HAL_GPIO_WritePin(GPIOA, GPIO_PIN_11, (r) ? GPIO_PIN_RESET : GPIO_PIN_SET);	// LED_R ON
	  HAL_GPIO_WritePin(GPIOA, GPIO_PIN_10, (g) ? GPIO_PIN_RESET : GPIO_PIN_SET);	// LED_G ON
	  HAL_GPIO_WritePin(GPIOC, GPIO_PIN_9, (b) ? GPIO_PIN_RESET : GPIO_PIN_SET);	// LED_B ON
}

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

/************************ (C) COPYRIGHT STMicroelectronics *****END OF FILE****/
