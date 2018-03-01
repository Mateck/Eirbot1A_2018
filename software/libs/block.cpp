/*
 * TODO
 * Documentation
 */


#include "mbed.h"
#include "error.hpp"
#include "pid.hpp"
#include "qei.hpp"
#include "motor.hpp"
#include "block.hpp"


Block::Block(Qei* _qei, Pid* _pid, Motor* _motor)
{
	motor = _motor;
	qei = _qei;
	pid = _pid;
	SPspeed = 0;
	PVspeed = 0;
	qei_value = qei->GetQei();
	duty = motor->GetPwm();
	ticker = new Ticker;
	ticker->attach(callback(this, &Block::Refresh), PERIOD_REFRESH);
}

Block::~Block()
{

}

void Block::Reset()
{
	SPspeed = 0;
	PVspeed = 0;
	qei->Reset();
	pid->Reset();
	motor->Reset();
}

float Block::GetSP()
{
	return SPspeed;
}

float Block::GetPV()
{
	return PVspeed;
}

float Block::GetPwm()
{
	return motor->GetPwm();
}

bool Block::GetDir()
{
	return motor->GetDir();
}

bool Block::GetBreak()
{
	return motor->GetBreak();
}

short Block::GetQei()
{
	return qei->GetQei();
}

short Block::GetQei(short* value)
{
	short new_value = qei->GetQei();
	short diff = new_value - value;;
	value = new_value;
	return diff;
}

void Block::SetSpeed(float speed)
{
	SPspeed = speed;
}

void Block::SetBreak(bool br)
{
	motor->SetBreak(br);
}

void Block::Refresh()
{
	PVspeed = RefreshDiff(&qei_value, _qei->GetQei());
	float err = SPspeed - PVspeed;
	duty = min(pid->GetPid(err, _duty), MAX_DUTY);
	static unsigned char dir;
	if (duty > 0.0f) {
		dir = DIR_FORWARD;
	} else {
		dir = DIR_BACKWARD;
		duty = -_duty;
	}
	motor->SetDirection(dir);
	motor->SetPwm(duty);
}

