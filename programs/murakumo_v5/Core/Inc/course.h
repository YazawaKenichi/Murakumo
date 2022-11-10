#ifndef __COURSE_H__
#define __COURSE_H__

#include "velodef.h"
#include "main.h"
#include "motor.h"
#include "encoder.h"
#include "flash.h"

void course_init();
uint16_t course_read_state_time();
void course_increment_state_time();
double course_calclate_radius();
void course_state_function();

#endif
