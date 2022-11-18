#include "print.h"

PUTCHAR_PROTOTYPE
{
	HAL_UART_Transmit(&huart6, (uint8_t*) &ch, 1, 0xFFFF);
	return ch;
}

void d_print()
{
	/* debug print */
	print_analog_rate();
}

void print_while()
{
	printf("///// WHILE /////\n\r");
    print_playmode();
	print_rotary_value();
	/* print Tracer and Velotracer target and gains */
	print_tracer_values();
	print_velotrace_values();
}

void print_tracer_values()
{
	printf("Tracer\r\n");
	printf("target = 0\r\n");
	printf("kp = %5.3f, ki = %5.3f, kd = %5.3f\r\n", tracer_read_gain_kp(rotary_read_value()), tracer_read_gain_ki(rotary_read_value()), tracer_read_gain_kd(rotary_read_value()));
}

void print_velotrace_values()
{
	printf("Velotrace\r\n");
	printf("target = %5.3f\r\n", velotrace_read_target(rotary_read_value()));
	printf("kp = %5.3f, ki = %5.3f, kd = %5.3f\r\n", velotrace_read_gain_kp(rotary_read_value()), velotrace_read_gain_ki(rotary_read_value()), velotrace_read_gain_kd(rotary_read_value()));
}

void print_playmode()
{
	printf("playmode = %2d\r\n", rotary_read_playmode());
}

void print_rotary_value()
{
	printf("rotary_value = %2d\r\n", rotary_read_value());
}

void print_analog_rate()
{
	printf("\x1b[24C");	// Cursor move right *24
	printf("%4d, %4d | %4d, %4d\r\n", analog_sensor_get(12), analog_sensor_get(14), analog_sensor_get(15),
			analog_sensor_get(13));
	printf("%4d, %4d, %4d, %4d, %4d, %4d | %4d, %4d, %4d, %4d, %4d, %4d\r\n",
			analog_sensor_get(0), analog_sensor_get(2), analog_sensor_get(4), analog_sensor_get(6), analog_sensor_get(8), analog_sensor_get(10),
			analog_sensor_get(11), analog_sensor_get(9), analog_sensor_get(7), analog_sensor_get(5), analog_sensor_get(3),
			analog_sensor_get(1));
}
