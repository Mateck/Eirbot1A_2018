/*
 * TODO
 * Documentation
 * Add all constants in config.hpp
 */

#include "navigator.hpp"

float ticks_per_meter = 43723.0f;
float eps = 0.348f*ticks_per_meter;
float vmax = 0.15f*ticks_per_meter;
float vmax_t = vmax * 0.0052f;
float amax = 0.05f*ticks_per_meter;
float amax_t = amax*0.0052f;

float thresh_angle = 0.087f;
float thresh_dist = 4096.0f;
float thresh_angle_dst = 0.087f;


Navigator::Navigator(Block& _block_l, Block& _block_r, float _period,
		float _period_pos):
	pos(),
	dst(),
	block_l(_block_l),
	block_r(_block_r)
{
	qei_l = 0;
	qei_r = 0;
	period = _period;
	period_pos = _period_pos;
}

Navigator::~Navigator()
{
	
}

void Navigator::Reset()
{
	ticker.detach();
	ticker_pos.detach();
	block_l.Reset();
	block_r.Reset();
	qei_l = 0;
	qei_r = 0;
}

void Navigator::Start()
{
	block_l.Start();
	block_r.Start();
	ticker.attach(callback(this, &Navigator::Refresh), period);
	ticker_pos.attach(callback(this, &Navigator::RefreshPos), period_pos);
}

Pos Navigator::GetPos()
{
	return pos;
}

Pos Navigator::GetDst()
{
	return dst;
}

void Navigator::SetPos(Pos _pos)
{

}

void Navigator::SetDst(Pos _dst)
{
	dst.x = _dst.x;
	dst.y = _dst.y;
	dst.angle = _dst.angle;
}

void Navigator::Refresh()
{
	float dx = dst.x - pos.x;
	float dy = dst.y - pos.y;
	float dist_err = sqrtf(dx*dx + dy*dy);
	float angle_err = 2 * atan(dy/(dx+dist_err)) - pos.angle;
	float angle_err_dst = dst.angle - pos.angle;
	float dist_l = 0.0f;
	float dist_r = 0.0f;
	/*if (abs(angle_err) > thresh_angle && abs(dist_err) > thresh_dist) {
		dist_l = -angle_err * eps/2;
		dist_r = -dist_l;
	} else*/ if (abs(dist_err) > thresh_dist) {
		dist_l = dist_err;
		dist_r = dist_err;
	} else if (abs(angle_err_dst) > thresh_angle_dst) {
		dist_l = -angle_err_dst * eps/2;
		dist_r = -dist_l;
	}
	float speed_l = ComputeSpeed(block_l.GetPV(), dist_l, vmax, amax,
				amax_t);
	float speed_r = ComputeSpeed(block_l.GetPV(), dist_r, vmax, amax,
				amax_t);
	block_l.SetSpeed(speed_l);
	block_r.SetSpeed(speed_r);
	block_l.Refresh();
	block_r.Refresh();
}

void Navigator::RefreshPos()
{
	float dl = (float)block_l.GetQei(qei_l);
	float dr = (float)block_r.GetQei(qei_r);
	float angle = (dr-dl)/eps;
	float dx = (dl+dr)/2.0f;
	float dy = 0.0f;
	if (abs(angle) > 0.0000175f) {
		float radius = (dl+dr)/2.0f/angle;
		dx = radius*sin(angle);
		dy = radius*(1.0f-cos(angle));
	}
	pos.x += cos(pos.angle)*dx - sin(pos.angle)*dy;
	pos.y += sin(pos.angle)*dx + cos(pos.angle)*dy;
	pos.angle += angle;
	if (abs(pos.angle) > PI) pos.angle -= sg(pos.angle)*TWOPI;
}


float ComputeSpeed(short speed, float dist, float vmax_t, float amax,
		float amax_t)
{
	return sg(dist) * min(abs((float)speed + sg(speed)*amax_t),
			      vmax_t,
			      sqrtf(2*amax*abs(dist)));
}

