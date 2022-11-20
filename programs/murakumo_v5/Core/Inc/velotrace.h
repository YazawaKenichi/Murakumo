#ifndef __VELOTRACE_H__
#define __VELOTRACE_H__

#include "velodef.h"
#include "pid.h"
#include "print.h"

#define D_VELOTRACE 0

#define VELOTRACE_STEP_SIZE 16

/* velotrace_init(1), velotrace_set_gain(), velotrace_set_target() */
void velotrace_start();
/* s_error and d_error are zero */
void velotrace_init(double samplingtime_);
/* read target kp ki kd */
double velotrace_read_target(unsigned short int i);
double velotrace_read_gain_kp(unsigned short int i);
double velotrace_read_gain_ki(unsigned short int i);
double velotrace_read_gain_kd(unsigned short int i);
/* kp ki kd settings */
void velotrace_set_gain(unsigned short int i);
/* terget setting */
void velotrace_set_target(unsigned short int i);
/* calclate pid solving */
double velotrace_solve(double reference_);

#endif
