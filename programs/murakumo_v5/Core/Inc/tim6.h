#ifndef __TIM6_H__
#define __TIM6_H__

#include "analog.h"
#include "flash.h"
#include "motor.h"
#include "encoder.h"
#include "velotrace.h"
#include "tracer.h"
#include "main.h"
#include "sidesensor.h"

void tim6_init();
void tim6_start();
void tim6_stop();
void tim6_main();

#endif
