#ifndef __TIM10_H__
#define __TIM10_H__

#include "main.h"
#include "encoder.h"
#include "sidesensor.h"
#include "LED.h"

#define TIM10_Hz 0.001

void tim10_init();
void tim10_fin();
void tim10_main();

#endif
