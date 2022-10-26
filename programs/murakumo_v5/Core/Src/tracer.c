#include "tracer.h"

double s_error;
double kp;
double ki;
double kd;
double target;
double before_error;
unsigned double samplingtime;

void pid_init(double samplintgime_);
{
    samplingtime = samplingtime_;
    s_error = 0;
    before_error = 0;
}

void pid_set_gain(double kp_, double ki_, double kd_)
{
    kp = kp_;
    ki = ki_;
    kd = kd_;
}

void pid_set_target(double target_)
{
    target = target_;
}

double pid_return(double reference_)
{
    double error = target - reference_;
    double d_error = error - before_error;
    s_error += error;
    double result = kp * error + ki * s_error * samplingtime + kd * d_error / samplingtime;

    error = before_error;

    return result;
}
