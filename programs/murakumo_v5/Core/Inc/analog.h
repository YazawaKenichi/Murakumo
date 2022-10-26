#ifndef __ANALOG_H__
#define __ANALOG_H__

#define ATTACH_LONGSENSOR 0	// use normal sensor and long sensor
#define USE_LONGSENSOR 0	// only use long sensor

#define SENSGETCOUNT 9
#define CALIBRATIONSIZE_MAX 16
#define CALIBRATIONSIZE 16

extern uint16_t analograte[CALIBRATIONSIZE];

void sensor_initialize();
void sensor_finalize();
void HAL_ADC_ConvCpltCallback(ADC_HandleTypeDef * AdcHandle);

#endif
