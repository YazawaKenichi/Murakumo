#ifndef __TRACER_H__
#define __TRACER_H__

#include "velodef.h"
#include "pid.h"

#define TRACER_STEP_SIZE 16

/* s_error and d_error are zero and if search then gain and target are zero */
void tracer_start();
/* s_error and d_error are zero*/
void tracer_init(double samplingtime_);
/* read kp ki kd */
double tracer_read_gain_kp(unsigned short int i);
double tracer_read_gain_ki(unsigned short int i);
double tracer_read_gain_kd(unsigned short int i);
/* kp ki kd settings*/
void tracer_set_gain(unsigned short int i);
/* terget setting */
void tracer_set_target(double target_);
/* calclate pid solving */
double tracer_solve(double reference_);
/* read pid struct */
// PID tracer_read();
/* set pid struct */
// void tracer_set(PID);

/* usuage */
/*
    run_init()
    {
        ...
        tracer_init();
        tracer_set_gain(10, 8, 2);
        tracer_set_target(0);
        ...
    }

    in_timer()
    {
        ...
        motor = tracer_solve(sensorvalue);
        ...
    }
*/

#endif
