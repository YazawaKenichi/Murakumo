#ifndef __SIDESENSOR_H__
#define __SIDESENSOR_H__

#include "main.h"

void sidesensor_start();
void sidesensor_init();
void sidesensor_stop();
uint8_t sidesensor_read();
void sidesensor_right();
void sidesensor_left();
void sidesensor_cross();
void sidesensor_function();

#endif

