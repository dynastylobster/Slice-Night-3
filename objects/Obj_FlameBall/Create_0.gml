/// @description Insert description here
// You can write your code in this editor
alarm[0] = 6
age = 0;
angle = 0;
xspeed = 0
yspeed = 0
speed = 4

	thrower = noone;
if instance_place(x,y,Obj_FlameBallThrower) {
	thrower = instance_place(x,y,Obj_FlameBallThrower)
}

if thrower != noone 
		{
		direction = point_direction(thrower.x,thrower.y,x,y);
}

