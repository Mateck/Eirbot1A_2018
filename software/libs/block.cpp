/*
 * TODO
 * Documentation
 */

#include "block.hpp"


Block::Block(Qei& _qei, Pid& _pid, Motor& _motor, float _period):
	qei(_qei),
	pid(_pid),
	motor(_motor)
{
	SPspeed = 0;
	PVspeed = 0;
	qei_value = qei.GetQei();
	duty = 0.0f;
	period = _period;
}

Block::~Block()
{

}

void Block::Reset()
{
	ticker.detach();
	SPspeed = 0;
	PVspeed = 0;
	qei.Reset();
	pid.Reset();
	motor.Reset();
	duty = 0.0f;
}

void Block::Start()
{

	qei_value = qei.GetQei();
	duty = 0.0f;
	ticker.attach(callback(this, &Block::Refresh), period);
}

float Block::GetSP()
{
	return SPspeed;
}

float Block::GetPV()
{
	return PVspeed;
}

float Block::GetDuty()
{
	return motor.GetDuty();
}

bool Block::GetDir()
{
	return motor.GetDir();
}

bool Block::GetBreak()
{
	return motor.GetBreak();
}

short Block::GetQei()
{
	return qei.GetQei();
}

short Block::GetQei(short& value)
{
	short new_value = qei.GetQei();
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
	motor.SetBreak(br);
}

void Block::Refresh()
{
	PVspeed = (float)GetQei(qei_value);
	float err = SPspeed - PVspeed;
	duty = min(pid.GetPid(err, duty), MAX_DUTY);
	duty = max(duty, -MAX_DUTY);
	if (duty > 0.0f) {
		motor.SetDirection(DIR_FORWARD);
		motor.SetPwm(duty);
	} else {
		motor.SetDirection(DIR_BACKWARD);
		motor.SetPwm(-duty);
	}
}

