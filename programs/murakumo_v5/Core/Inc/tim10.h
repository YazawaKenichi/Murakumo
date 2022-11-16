#ifndef __TIM10_H__
#define __TIM10_H__

#include "main.h"
#include "encoder.h"
#include "sidesensor.h"
#include "LED.h"

#define TIM10_Hz 0.001

void tim10_length_init();
void tim10_start();
void tim10_stop();
void tim10_init();
void tim10_fin();

double tim10_read_velocity_left();
double tim10_read_velocity_right();
double tim10_read_velocity();

double tim10_read_length_left();
double tim10_read_length_right();
double tim10_read_length();

void tim10_main();

#endif
