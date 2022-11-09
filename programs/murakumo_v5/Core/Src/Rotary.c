#include "Rotary.h"

PlayMode playmode;

void rotary_init()
{
	HAL_TIM_Base_Start_IT(&htim11);	// 1ms	// ROTARY SWITCH
    rotary_set_playmode();
}

void rotary_set_playmode()
{
    playmode = rotary_read();
}

PlayMode rotary_read_playmode()
{
    return playmode;
}

uint8_t rotary_read()
{
    uint8_t rotaryvalue_ = 0;

    rotaryvalue_ += (HAL_GPIO_ReadPin(GPIOC, GPIO_PIN_12) ? 0 : 1) << 0;
    rotaryvalue_ += (HAL_GPIO_ReadPin(GPIOC, GPIO_PIN_10) ? 0 : 1) << 1;
    rotaryvalue_ += (HAL_GPIO_ReadPin(GPIOA, GPIO_PIN_12) ? 0 : 1) << 2;
    rotaryvalue_ += (HAL_GPIO_ReadPin(GPIOC, GPIO_PIN_11) ? 0 : 1) << 3;

    return rotaryvalue_;
}

/* Usuage */
/*
    void main()
    {
        ...
        rotary_set_playmode();
        ...
        while(1)
        {
            ...
            switch(rotary_read())
            {
                case hoge:
                    ...
                    break;
                case fuga:
                    ...
                    break;
                case piyo:
                    ...
                    break;
                default:
                    break;
            }
            ...
        }
    }
*/
