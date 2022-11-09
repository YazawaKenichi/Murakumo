#ifndef __VELOTRACE_H__
#define __VELOTRACE_H__

#include "velodef.h"
#include "pid.h"

#define VELOTRACE_STEP_SIZE 16

/* velotrace_init(1), velotrace_set_gain(), velotrace_set_target() */
void velotrace_start();
/* s_error and d_error are zero */
void velotrace_init(double samplingtime_);
/* kp ki kd settings */
void velotrace_set_gain(unsigned short int i);
/* terget setting */
void velotrace_set_target(unsigned short int i);
/* calclate pid solving */
double velotrace_solve(double reference_);

#endif
