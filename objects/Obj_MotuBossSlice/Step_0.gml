/// @description Insert description here
// You can write your code in this editor
if image_index < 3 {
image_speed = !global.paused;	
}
if image_index >= 3 

{
	if instance_exists(Obj_Billy) {
	with(Obj_Billy) {
		if !place_meeting(x,y,Obj_BillyNormalPhysicsArea) {
		max_walkspeed = 3
		if !grounded cam_y = y-64;
		yspeed = clamp(yspeed,-7,2.6);
		}
		}
	}
	if instance_exists(Obj_BossLockBlock)
	{
	with(Obj_BossLockBlock) {
		image_speed = 0.125;
		}
	}
}

if image_index >= 4 image_speed = 0;

if hp = 0 instance_destroy();