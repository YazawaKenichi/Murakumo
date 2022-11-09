#ifndef __SIDESENSOR_H__
#define __SIDESENSOR_H__

#include "main.h"

uint8_t sidesensor_init();
uint8_t sidesensor_read();
void sidesensor_right();
void sidesensor_left();
void sidesensor_cross();
void sidesensor_function();

#endif

