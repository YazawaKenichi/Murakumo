#ifndef __ROTARY_H__
#define __ROTARY_H__

typedef struct
{
    uint8_t value;
    uint8_t offset;
} Rotary;

uint8_t rotary_init(Rotary);
uint8_t rotary_value(uint8_t);

#endif