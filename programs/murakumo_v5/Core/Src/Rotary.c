#include "Rotary.h"

uint8_t rotary_init(Rotary rotary_)
{
    rotary_.offest = rotary_read(0);
    rotary_.value = rotary_.offset;

    return rotary_.value;
}

uint8_t rotary_read(uint8_t rotary_value__)
{
    uint8_t rotayvalue_ = 0;

    rotaryvalue_ += (HAL_GPIO_ReadPin(GPIOC, GPIO_PIN_12)) ? 0 : 1;
    rotaryvalue_ += (HAL_GPIO_ReadPin(GPIOC, GPIO_PIN_10)) ? 0 : 1;
    rotaryvalue_ += (HAL_GPIO_ReadPin(GPIOA, GPIO_PIN_12)) ? 0 : 1;
    rotaryvalue_ += (HAL_GPIO_ReadPin(GPIOC, GPIO_PIN_11)) ? 0 : 1;

    return rotaryvalue_ - rotary_value__;
}
