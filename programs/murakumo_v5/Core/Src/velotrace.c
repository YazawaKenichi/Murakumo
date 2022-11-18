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

double velotrace_read_target(unsigned short int i)
{
    return VELOCITY_TARGET_MAX - ((VELOTRACE_STEP_SIZE - 1) - i) * (double) (VELOCITY_TARGET_MAX - VELOCITY_TARGET_MIN) / (double) (VELOTRACE_STEP_SIZE - 1);
}

double velotrace_read_gain_kp(unsigned short int i)
{
    return VELOCITY_KP_MAX - ((VELOTRACE_STEP_SIZE - 1) - i) * (double) (VELOCITY_KP_MAX - VELOCITY_KP_MIN) / (double) (VELOTRACE_STEP_SIZE - 1);
}

double velotrace_read_gain_ki(unsigned short int i)
{
    return VELOCITY_KI_MAX - ((VELOTRACE_STEP_SIZE - 1) - i) * (double) (VELOCITY_KI_MAX - VELOCITY_KI_MIN) / (double) (VELOTRACE_STEP_SIZE - 1);
}

double velotrace_read_gain_kd(unsigned short int i)
{
    return VELOCITY_KD_MAX - ((VELOTRACE_STEP_SIZE - 1) - i) * (double) (VELOCITY_KD_MAX - VELOCITY_KD_MIN) / (double) (VELOTRACE_STEP_SIZE - 1);
}

void velotrace_set_gain(unsigned short int i)
{
    pid.kp = velotrace_read_gain_kp(i);
    pid.ki = velotrace_read_gain_ki(i);
    pid.kd = velotrace_read_gain_kd(i);
}

void velotrace_set_target(unsigned short int i)
{
    pid.target = velotrace_read_target(i);
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

