#ifndef __PID_H__
#define __PID_H__

#include "main.h"

typedef struct
{
    double target;
    double kp;
    double ki;
    double kd;
} PID;

PID pid_product(PID, double);

#endif
