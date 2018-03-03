/*
 * TODO
 * Documentation
 * Create LMD18200 and L298 class inheritant from Motor
 */

#include "motor.hpp"


Motor::Motor(PinName _pwm, PinName _dir, PinName _break, bool _dir_fwd):
	pwm(_pwm),
	dir(_dir),
	br(_break)
{
	dir_fwd = _dir_fwd;
	pwm.period(PERIOD_PWM);
	SetPwm(0.0f);
	SetDirection(DIR_FORWARD);
	SetBreak(BREAK_OFF);
}

Motor::~Motor()
{
	
}

void Motor::Reset()
{
	SetPwm(0.0f);
	SetDirection(DIR_FORWARD);
	SetBreak(BREAK_OFF);
}

float Motor::GetPwm()
{
	return pwm.read();
}

bool Motor::GetDir()
{
	return dir;
}

bool Motor::GetBreak()
{
	return br;
}

void Motor::SetPwm(float duty_cycle)
{
	float duty = min(duty_cycle, MAX_DUTY);
	pwm.write(duty);
}

void Motor::SetDirection(bool dir_value)
{
	dir = (dir_value && !dir_fwd) || (!dir_value && dir_fwd);
}

void Motor::SetBreak(bool br_value)
{
	br = br_value;
}

