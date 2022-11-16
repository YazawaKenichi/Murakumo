#ifndef __ROTARY_H__
#define __ROTARY_H__

#include "main.h"

#define ROTARY_COUNT 16

typedef enum PLAYMODE
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

void rotary_init();
void rotary_set_playmode();
PlayMode rotary_read_playmode();
void rotary_set_value();
uint8_t rotary_reqad_value();
uint8_t rotary_read();

#endif
