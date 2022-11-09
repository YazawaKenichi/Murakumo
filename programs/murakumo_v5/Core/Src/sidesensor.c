#include "sidesensor.h"

unsigned char subsensbuf, marker, sidedeltacount, markerstate, rightmarkercount;

uint8_t sidesensor_read()
{
    uint8_t subsens;

    subsens = 0;
    subsens += !HAL_GPIO_ReadPin(SubSens1_GPIO_Port, SubSens1_Pin) ? 1 : 0;
    subsens += !HAL_GPIO_ReadPin(SubSens2_GPIO_Port, SubSens2_Pin) ? 2 : 0;

    return subsens;
}

void sidesensor_init()
{
    marker = 0;
    subsensbuf = 0;
    sidedeltacount = 0;
    markerstate = 0;
    rightmarkercount = 0;
    HAL_TIM_Base_Start_IT(&htim14);
}

void sidesensor_right()
{
    markerstate = 0b01;
    if(rightmarkercount == 1 - 1)
    {
        // start
    }
    else if(rightmarkercount == 2 - 1)
    {
        // stop
    }
    rightmarkercount++;
}

void sidesensor_left()
{
    // curve
    markerstate = 0b10;
}

void sidesensor_cross()
{
    // cross
    markerstate = 0b11;
}

void sidesensor_function()
{
	unsigned char subsens;

	subsens = read_sidesens();

	if(subsens != subsensbuf)
	{
		subsensbuf = subsens;
		marker += subsens << (2 * sidedeltacount);
		if(subsens == 0b00 && sidedeltacount != 0)
		{
            unsigned char first, second;
			first = (marker & 0b0011);
			second = (marker & 0b1100) >> 2;
			if (second == 0b00)
			{
				if (first == 0b01)
				{
					// right -> start / stop
                    sidesensor_right();
				}
				else if (first == 0b10)
				{
					// left -> curve
                    sidesensor_left();
				}
				else
				{
					// cross
                    sidesensor_cross();
				}
			}
			else
			{
				// cross
                sidesensor_cross();
			}
			sidedeltacount = 0;
			marker = 0;
		}
		else
		{
			sidedeltacount++;
		}
	}
}


