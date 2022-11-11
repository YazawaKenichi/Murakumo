#ifndef __TRACER_H__
#define __TRACER_H__

#include "velodef.h"
#include "pid.h"

#define TRACE_STEP_SIZE 16

/* s_error and d_error are zero*/
void tracer_init(double samplingtime_);
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
