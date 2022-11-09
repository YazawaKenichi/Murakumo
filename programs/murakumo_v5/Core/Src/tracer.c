#include "tracer.h"

double s_error;
double before_error;
double samplingtime;

PID pid;

void tracer_init(double samplingtime_)
{
    samplingtime = samplingtime_;
    s_error = 0;
    before_error = 0;
}

void tracer_set_gain(unsigned short int i)
{
    pid.kp = TRACER_KP_MAX - (TRACE_STEP_SIZE - i + 1) * (double) TRACER_KP_TOLERANCE;
    pid.ki = TRACER_KI_MAX - (TRACE_STEP_SIZE - i + 1) * (double) TRACER_KI_TOLERANCE;
    pid.kd = TRACER_KD_MAX - (TRACE_STEP_SIZE - i + 1) * (double) TRACER_KD_TOLERANCE;
}

void tracer_set_target(double target_)
{
    pid.target = target_;
}

double tracer_solve(double reference_)
{
    double error = reference_ - pid.target;
    double d_error = error - before_error;
    s_error += error;
    double result = pid.kp * error + pid.ki * s_error * samplingtime + pid.kd * d_error / samplingtime;

    error = before_error;

    return result;
}

/*
PID tracer_read()
{
    return pid;
}
*/

/*
void tracer_set(PID pid_)
{
    pid = pid_;
}
*/
