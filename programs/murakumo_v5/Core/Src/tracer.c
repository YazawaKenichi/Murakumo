#include "tracer.h"

double s_error;
double before_error;
double samplingtime;

PID pid;

void tracer_start()
{
    tracer_init(1);
    tracer_set_gain(rotary_read_value());
    tracer_set_target(0);
}

void tracer_init(double samplingtime_)
{
    #if D_TRACER
    printf("[tracer.c] > sampling_time = 1, s_error = 0, before_error = 0\r\n");
    #endif
    samplingtime = samplingtime_;
    s_error = 0;
    before_error = 0;
}

double tracer_read_gain_kp(unsigned short int i)
{
    return TRACER_KP_MAX - ((TRACER_STEP_SIZE - 1) - i) * (double) (TRACER_KP_MAX - TRACER_KP_MIN) / (double) (TRACER_STEP_SIZE - 1);
}

double tracer_read_gain_ki(unsigned short int i)
{
    return TRACER_KI_MAX - ((TRACER_STEP_SIZE - 1) - i) * (double) (TRACER_KI_MAX - TRACER_KI_MIN) / (double) (TRACER_STEP_SIZE - 1);
}

double tracer_read_gain_kd(unsigned short int i)
{
    return TRACER_KD_MAX - ((TRACER_STEP_SIZE - 1) - i) * (double) (TRACER_KD_MAX - TRACER_KD_MIN) / (double) (TRACER_STEP_SIZE - 1);
}

void tracer_set_gain(unsigned short int i)
{
    #if D_TRACER
    printf("pid = tracer_read_gain\r\n");
    #endif
    pid.kp = tracer_read_gain_kp(i);
    pid.ki = tracer_read_gain_ki(i);
    pid.kd = tracer_read_gain_kd(i);
}

void tracer_set_target(double target_)
{
    #if D_TRACER
    printf("pid = target \r\n");
    #endif
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
