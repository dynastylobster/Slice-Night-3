/// @description Insert description here
// You can write your code in this editor
if sprite_index != Spr_FlatBoofer_Active {
	if instance_exists(Obj_Billy) {
	Obj_Billy.grounded = false
	global.key_Z = true
	Obj_Billy.yspeed = -5
	if Obj_Billy.x > x
	{Obj_Billy.xspeed = 7; global.key_right = true}
	if Obj_Billy.x < x
	{Obj_Billy.xspeed = -7; global.key_left = true}
	}
	alarm[0] = 45
	instance_create_layer(x,y,layer,Obj_ParryBallEffect);
	sprite_index = Spr_FlatBoofer_Active
	}