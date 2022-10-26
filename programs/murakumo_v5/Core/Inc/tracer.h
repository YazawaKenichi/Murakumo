#ifndef __PID_H__
#define __PID_H__

/*
typedef struct
{
    double s_error;
    double kp;
    double ki;
    double kd;
    double target;
    double before_error;
    unsigned double samplingtime;
} PID;
*/

/* s_error and d_error are zero*/
void pid_init(double samplingtime_);
/* kp ki kd settings*/
void pid_set_gain(double kp_, double ki_, double kd_);
/* terget setting */
void pid_set_target(double target_);
/* calclate pid solving */
double pid_return(double reference_);

/* usuage */
/*
    run_init()
    {
        ...
        pid_init();
        pid_set_gain(10, 8, 2);
        pid_set_target(0);
        ...
    }

    in_timer()
    {
        ...
        motor = pid_return(sensorvalue);
        ...
    }
*/

#endif
