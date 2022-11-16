#include "analog.h"

unsigned int sensgettime;
uint8_t calibrationsize;

uint16_t analograw[CALIBRATIONSIZE_MAX];
uint16_t analog[CALIBRATIONSIZE];
uint16_t analogmax[CALIBRATIONSIZE];
uint16_t analogmin[CALIBRATIONSIZE];
uint16_t analograte[CALIBRATIONSIZE];

AnalogMode analogmode;

void analog_set_on_flash(uint16_t *analogmin_, uint16_t *analogmax_)
{
	printf("analog_set_on_flash()\r\n");
	for(unsigned int i = 0; i < CALIBRATIONSIZE; i++)
	{
		printf("analogmin[%2d] = %5d, analogmax[%2d] = %5d\r\n", i, analogmin[i], i, analogmax[i]);
		*(analogmin_ + i) = analogmin[i];
		*(analogmax_ + i) = analogmax[i];
	}
}

void analog_set_from_flash(uint16_t *analogmin_, uint16_t *analogmax_)
{
	printf("analog_set_from_flash()\r\n");
	for(unsigned int i = 0; i < CALIBRATIONSIZE; i++)
	{
		analogmin[i] = *(analogmin_ + i);
		analogmax[i] = *(analogmax_ + i);
	}
}

void analog_set_calibrationsize(uint8_t calibrationsize_)
{
	calibrationsize = calibrationsize_;
}

uint8_t analog_read_calibrationsize()
{
	return calibrationsize;
}

void analog_calibration_start()
{
	analogmode = calibrating;
    for(unsigned char i = 0; CALIBRATIONSIZE > i; i++)
    {
        analogmax[i] = 0;
        analogmin[i] = 4096;
    }
	analog_sensor_start();
}

void analog_calibration_stop()
{
	/* analog_calibration_stop */
	analogmode = all;
}

void analog_init()
{
	analog_set_calibrationsize(CALIBRATIONSIZE);
    if(HAL_ADC_Init(&hadc1) != HAL_OK)
    {
        Error_Handler();
    }
}

void analog_start()
{
	analog_sensor_start();
}

void analog_stop()
{
	analog_sensor_stop();
}

void analog_sensor_start()
{
    sensgettime = 0;
    if(HAL_ADC_Start_DMA(&hadc1, (uint32_t*) analograw, CALIBRATIONSIZE_MAX) != HAL_OK)
    {
        Error_Handler();
    }
    HAL_Delay(1000);
}

void analog_sensor_stop()
{
	HAL_ADC_Stop_DMA(&hadc1);
}

uint16_t analog_sensor_get(unsigned char i)
{
	analograte[i] = ((analog[i] - analogmin[i]) * 1000) / (analogmax[i] - analogmin[i]);
#if USE_SIGMOID_TRACE
	analograte[i] = 1000 * sigmoid(analograte[i], (16 - i)/(double)800, 500);
#endif
	return analograte[i];
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
			if(analogmode == calibrating)
			{
				analogmax[index] = (analogmax[index] < analogbuf) ? analogbuf : analogmax[index];
				analogmin[index] = (analogmin[index] > analogbuf) ? analogbuf : analogmin[index];
			}
		}
	}

    /* sensorget */
	for(unsigned char index = 0; CALIBRATIONSIZE_MAX > index; index++)
    {
		analogbuffers[sensgettime][index] = analograw[index];
	}
	sensgettime++;
}
