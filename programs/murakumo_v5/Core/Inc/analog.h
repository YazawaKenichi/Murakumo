#ifndef __ANALOG_H__
#define __ANALOG_H__

#define SENSGETCOUNT 9
#define CALIBRATIONSIZE_MAX 16
#define CALIBRATIONSIZE 16

extern uint8_t sensgettime;

void sensor_initialize();
void sensor_finalize();
void HAL_ADC_ConvCpltCallback(ADC_HandleTypeDef * AdcHandle);

#endif
