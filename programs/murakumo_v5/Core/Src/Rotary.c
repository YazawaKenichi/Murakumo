#include "Rotary.h"

PlayMode playmode;
uint8_t value;

void rotary_init()
{
    rotary_set_playmode();
    rotary_set_value();
}

void rotary_set_playmode()
{
    playmode = rotary_read();
}

PlayMode rotary_read_playmode()
{
    return playmode;
}

void rotary_set_value()
{
    value = rotary_read();
}

uint8_t rotary_read_value()
{
    return value;
}

uint8_t rotary_read()
{
    uint8_t rotary_value_ = 0;

    rotary_value_ += (HAL_GPIO_ReadPin(GPIOC, GPIO_PIN_12) ? 0 : 1) << 0;
    rotary_value_ += (HAL_GPIO_ReadPin(GPIOC, GPIO_PIN_10) ? 0 : 1) << 1;
    rotary_value_ += (HAL_GPIO_ReadPin(GPIOA, GPIO_PIN_12) ? 0 : 1) << 2;
    rotary_value_ += (HAL_GPIO_ReadPin(GPIOC, GPIO_PIN_11) ? 0 : 1) << 3;

    return rotary_value_;
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
