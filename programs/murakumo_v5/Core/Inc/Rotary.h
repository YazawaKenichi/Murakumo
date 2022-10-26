#ifndef __ROTARY_H__
#define __ROTARY_H__

typedef struct
{
    uint8_t value;
    uint8_t offset;
} Rotary;

typedef enum
{
    calibration,
    search,
    accel,
    max_enable, // 
    pid_tuning, // 
    zero_trace, // Velocity target = 0
    banquet,    // en kai gei
    flash_print = 15
} PlayMode;

uint8_t rotary_init(Rotary);
uint8_t rotary_value(uint8_t);

#endif