#ifndef __VELOCON_H__
#define __VELOCON_H__

#define VELOCITY_TARGET_LOW 1000
#define VELOCITY_TARGET_HIGH 1500
#define VELOCITY_TARGET_MAX 2000

// 6 0.06
#define VKP 6
#define VKI 0.06f
// #define VKP 0.5f
// #define VKI 0.005f

#if D_VELOCITY_CONTROL_TIMER
#define STOPTIME 1000 // 13188	// uint32_t [ms]
#endif

typedef struct
{
    uint16_t velocity_target[16];
    double kp[16];
    double ki[16];
    double kd[16];
} VeloGain;

#endif