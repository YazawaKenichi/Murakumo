#ifndef __MOTOR_H__
#define __MOTOR_H__

#include "main.h"

#define PWMMAX 1000

void motor_init();
void motor_enable(uint8_t enable_);
char motor_read_enable();
void motor_set(double motor_left_, double motor_right_);

#endif

