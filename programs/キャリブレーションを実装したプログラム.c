#define ADC_CONVERTED_DATA_BUFFER_SIZE 16	// ADC Channel Count
#define SENSGETCOUNT 9
#define CALIBRATIONSIZE 12

#define COMMONSPEED 250

uint16_t analograw[ADC_CONVERTED_DATA_BUFFER_SIZE] = {0};	// Analog Data

uint16_t analog[CALIBRATIONSIZE] = {0};
uint16_t analogmax[CALIBRATIONSIZE];
uint16_t analogmin[CALIBRATIONSIZE];
uint16_t analogbuffers[SENSGETCOUNT][CALIBRATIONSIZE];

uint16_t inittest1[8] = {0};

uint16_t analograte[CALIBRATIONSIZE] = {0};
uint16_t analogr, analogl;	// Sum Right Analog Sensor, Sum Left Analog Sensor
int direction;	// = analogr - analogl
unsigned char sensgettime;

uint16_t commonspeed = COMMONSPEED;

int leftmotor = 0;
int rightmotor = 0;

void HAL_TIM_PeriodElapsedCallback(TIM_HandleTypeDef *htim)
{
	if(htim->Instance == TIM6)	// TIM6	// 2ms
	{
	  analogl = 0;
	  analogr = 0;
	  for(unsigned char i = 0; i < CALIBRATIONSIZE; i++)
	  {
		uint16_t analogbuf = analog[i];

		if(analogmax[i] < analogbuf)
		{
			analogmax[i] = analogbuf;
		}
		if(analogmin[i] > analogbuf)
		{
			analogmin[i] = analogbuf;
		}

		analograte[i] = ((analogbuf - analogmin[i]) * 1000) / (analogmax[i] - analogmin[i]);

	    if(i % 2 == 0)
	    {
	      analogl += analograte[i];
	    }
	    else
	    {
	      analogr += analograte[i];
	    }
	  }

	  direction = analogl - analogr;	// difference
	  leftmotor = commonspeed + direction / CALIBRATIONSIZE / 2;
	  rightmotor = commonspeed - direction / CALIBRATIONSIZE / 2;

	  if(leftmotor < 0)
	  {
		  HAL_GPIO_WritePin(GPIOD, GPIO_PIN_2, GPIO_PIN_RESET);
		  leftmotor *= -1;
	  }
	  else
	  {
		  HAL_GPIO_WritePin(GPIOD, GPIO_PIN_2, GPIO_PIN_SET);
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
}

int main(void)
{
  HAL_Init();

  for(unsigned char i = 0; CALIBRATIONSIZE > i; i++)
  {
	  analogmax[i] = 0;
	  analogmin[i] = 4096;
  }

	printf(ESC_DEF);
	printf("\r\n\r\n\r\nStarting Program...\r\n\r\n");

	for(int i = 0; 8 > i; i++)
	{
		printf("inittest[&1d] = %d, ", i, inittest1[i]);
	}

	printf("Push SW2 to Calibration...\r\n");
	while(HAL_GPIO_ReadPin(GPIOC, GPIO_PIN_15))
	{
		HAL_Delay(100);
	}
	printf("Push SW1 to End Calibrating...\r\n");

	printf(ESC_MAG);
	while(HAL_GPIO_ReadPin(GPIOC, GPIO_PIN_14))
	{
		for(unsigned char j = 0; CALIBRATIONSIZE > j; j++)
		{
			uint16_t analogbuf = analog[j];
			analogmax[j] = (analogmax[j] < analogbuf) ? analogbuf : analogmax[j];
			analogmin[j] = (analogmin[j] > analogbuf) ? analogbuf : analogmin[j];
			printf("[%2d] = ", j);
			printf("%4d,", analogbuf);
		}
		printf("\r\n");
	}

	// 最大値の表示
	// 最小値の表示

	// 仕切りの表示

	// 最大値の表示
	// 最小値の表示

  printf("\r\n==================== while ====================\r\n");
  led_rgb(1, 1, 1);	// White
  while (1)
  {
	  // 割合の表示
	  for(unsigned char i = 0; i < CALIBRATIONSIZE / 2; i++)
	  {
		  printf("[%2d] = ", i * 2);
		  printf("%4d, ", analograte[i * 2]);
	  }
	  for(unsigned char i = CALIBRATIONSIZE / 2; i > 0; i--)
	  {
		  printf("[%2d] = ", i * 2 - 1);
		  printf("%4d,", analograte[i * 2 - 1]);
	  }
	  printf("\r\n");

	  // 実データの表示
	  printf(ESC_CYA);
	  for(unsigned char i = 0; i < CALIBRATIONSIZE / 2; i++)
	  {
		  printf("[%2d] = ", i * 2);
		  printf("%4d, ", analog[i * 2]);
	  }
	  for(unsigned char i = CALIBRATIONSIZE / 2; i > 0; i--)
	  {
		  printf("[%2d] = ", i * 2 - 1);
		  printf("%4d,", analog[i * 2 - 1]);
	  }
	  printf("\r\n");

	  // 最大値の表示
	  printf(ESC_RED);
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
	  
	  // 最小値の表示
	  printf(ESC_BLU);
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

	  // 総合点の表示
	  printf(ESC_GRE);
	  printf("leftmotor = %5d, rightmotor = %5d,", leftmotor, rightmotor);
	  printf("analogl = %5d, analogr = %5d, direction = %5d", analogl, analogr, direction);
	  printf("\r\n");
	  printf(ESC_DEF);
  }
}
