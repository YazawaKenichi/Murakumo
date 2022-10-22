#include "LED.h"

void write_led1(uint8_t value_)
{
    HAL_GPIO_WritePin(GPIOC, GPIO_PIN_8, value_)
}

void write_led2(uint8_t value_)
{
    HAL_GPIO_WritePin(GPIOB, GPIO_PIN_13, value_)
}

void write_rgb(Rgb)
{
}

void write_led(uint8_t mask_, uint8_t value_)
{
    if(mask_ & 0b01)
    {
        write_led1(0b01 & value_ >> 0);
    }
    if(mask_ & 0b10)
    {
        write_led2(0b10 & value_ >> 1);
    }
}
