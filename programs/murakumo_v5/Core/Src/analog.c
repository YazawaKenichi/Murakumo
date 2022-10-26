#include "analog.h"
#include "flash.h"

int sensgettime;

uint16_t analograw[CALIBRATIONSIZE_MAX];
uint16_t analog[CALIBRATIONSIZE];
uint16_t analogmax[CALIBRATIONSIZE];
uint16_t analogmin[CALIBRATIONSIZE];
uint16_t analograte[CALIBRATIONSIZE];

void analog_set(FlashBuffer *flashbuffer_)
{
	for(unsigned int i = 0; i < CALIBRATIONSIZE; i++)
	{
		flashbuffer_ -> analogmin[i] = analogmin[i];
		flashbuffer_ -> analogmax[i] = analogmax[i];
	}
}

void analog_initialize()
{
    for(unsigned char i = 0; CALIBRATIONSIZE > i; i++)
    {
        analogmax[i] = 0;
        analogmin[i] = 4096;
    }

    if(HAL_ADC_Init(&hadc1) != HAL_OK)
    {
        Error_Handler();
    }
}

void sensor_initialize()
{
    sensgettime = 0;
    if(HAL_ADC_Start_DMA(&hadc1, (uint32_t*) analograw, ADC_CONVERTED_DATA_BUFFER_SIZE) != HAL_OK)
    {
        Error_Handler();
    }
    HAL_Delay(1000);
}

void sensor_finalize()
{
	HAL_ADC_Stop_DMA(&hadc1);
}

void HAL_ADC_ConvCpltCallback(ADC_HandleTypeDef *AdcHandle)
{
uint16_t analogbuffers[SENSGETCOUNT][CALIBRATIONSIZE];
    /* sort */
	if(sensgettime >= SENSGETCOUNT)
    {
		sensgettime = 0;
		for(unsigned char index = 0; index < CALIBRATIONSIZE_MAX; index++)
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

			analog[index] = analogbuffers[(int) SENSGETCOUNT / 2][index];
			// get maxvalue and minimumvalue
			uint16_t analogbuf;
			analogbuf = analog[index];
			analogmax[index] = (analogmax[index] < analogbuf) ? analogbuf : analogmax[index];
			analogmin[index] = (analogmin[index] > analogbuf) ? analogbuf : analogmin[index];
		}
	}

    /* sensorget */
	for(unsigned char index = 0; CALIBRATIONSIZE_MAX > index; index++)
    {
		analogbuffers[sensgettime][index] = analograw[index];
	}
	sensgettime++;
}
