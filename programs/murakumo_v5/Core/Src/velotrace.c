#include "velotrace.h"

double s_error;
double before_error;
double samplingtime;

PID pid;

void velotrace_start()
{
    velotrace_init(1);
    if(rotary_read_playmode() == search)
    {
        velotrace_set_gain(0);
        velotrace_set_target(0);
    }
}

void velotrace_init(double samplingtime_)
{
    samplingtime = samplingtime_;
    s_error = 0;
    before_error = 0;
}

void velotrace_set_gain(unsigned short int i)
{
    pid.kp = VELOCITY_KP_MAX - (VELOTRACE_STEP_SIZE - i + 1) * (double) VELOCITY_KP_TOLERANCE;
    pid.ki = VELOCITY_KI_MAX - (VELOTRACE_STEP_SIZE - i + 1) * (double) VELOCITY_KI_TOLERANCE;
    pid.kd = VELOCITY_KD_MAX - (VELOTRACE_STEP_SIZE - i + 1) * (double) VELOCITY_KD_TOLERANCE;
}

void velotrace_set_target(unsigned short int i)
{
    pid.target = VELOCITY_TARGET_MAX - (VELOTRACE_STEP_SIZE - i + 1) * (double) VELOCITY_TARGET_TOLERANCE;
}

double velotrace_solve(double reference_)
{
    double error = reference_ - pid.target;
    double d_error = error - before_error;
    s_error += error;
    double result = pid.kp * error + pid. ki * s_error * samplingtime + pid.kd * d_error / samplingtime;

    error = before_error;

    return result;
}

