#include "Switch.h"

uint8_t read_sw1()
{
    return HAL_GPIO_ReadPin(GPIOC, GPIO_14) ? 0 : 1;
}

uint8_t read_sw2()
{
    return HAL_GPIO_ReadPin(GPIOC, GPIO_15) ? 0 : 1;
}

uint8_t read_switch(uint8_t value__)
{
    uint8_t value_ = 0;

    value_ += read_sw1() << 0;
    value_ += read_sw2() << 1;

    return value_ - value__;
}
