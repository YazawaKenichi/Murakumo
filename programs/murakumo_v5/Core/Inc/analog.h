#ifndef __ANALOG_H__
#define __ANALOG_H__

#include "main.h"

#define ATTACH_LONGSENSOR 0	// use normal sensor and long sensor
#define USE_LONGSENSOR 0	// only use long sensor

#define SENSGETCOUNT 9
#define CALIBRATIONSIZE_MAX 16
#define CALIBRATIONSIZE 16

void analog_set();
void analog_set_calibrationsize(uint8_t calibrationsize_);
uint8_t analog_read_calibrationsize();
void analog_calibration_init();
void analog_init();
void analog_sensor_init();
void analog_sensor_finalize();
void analog_sensor_get();
void HAL_ADC_ConvCpltCallback(ADC_HandleTypeDef * AdcHandle);

#endif
