#include "Switch.h"

uint8_t enter;

void switch_set_enter()
{
    enter = 1;
}

void switch_reset_enter()
{
    enter = 0;
}

void switch_init()
{
    switch_reset_einter();
}

uint8_t switch_read_enter()
{
    return enter;
}

uint8_t switch1_read()
{
    return HAL_GPIO_ReadPin(SW1_Pin, SW1_GPIO_Port) ? 0 : 1;
}

uint8_t switch2_read()
{
    return HAL_GPIO_ReadPin(SW2_Pin, SW2_GPIO_Port) ? 0 : 1;
}

uint8_t switch_read()
{
    uint8_t value_ = 0;

    value_ += switch1_read() << 0;
    value_ += switch2_read() << 1;

    return value_;
}

void switch_enter()
{
    if(switch_read() == 0b01)
    {
        switch_reset();
    }
    else if(switch_read() == 0b10)
    {
        switch_set();
    }
}

