/// @description Insert description here
// You can write your code in this editor
alarm[0] = 2
grav = 0.125
max_fallspeed = 4
yspeed = 0
xspeed = 0
sliced = false;
age = 0;

if instance_exists(Obj_Billy) {
	var _dir
	if Obj_Billy.x < x _dir = -1
	if Obj_Billy.x > x-1 _dir = 1
		xspeed = distance_to_object(Obj_Billy) * _dir / 48
	}