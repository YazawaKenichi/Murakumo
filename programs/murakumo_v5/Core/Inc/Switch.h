#ifndef __SWITCH_H__
#define __SWITCH_H__

typedef struct
{
    uint8_t value;
    uint8_t before;
    uint8_t press;
    uint8_t release;
} Switch;

uint8_t read_sw1();
uint8_t read_sw2();
uint8_t read_switch();

#endif