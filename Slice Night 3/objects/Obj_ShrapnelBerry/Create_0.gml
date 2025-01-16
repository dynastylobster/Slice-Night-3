/// @description Insert description here
// You can write your code in this editor
shrub = noone
if instance_exists(Obj_ShrapnelShrub) {
	shrub = instance_nearest(x,y,Obj_ShrapnelShrub);
	}
if shrub != noone {
xspeed = 0
yspeed = 0 
grav = 0.0525
if x <= shrub.x-4
{
	xspeed = -1.5
	} else {
		if x <= shrub.x-2 then xspeed = -0.5
	}
if x >= shrub.x+4
{
	xspeed = 1.5
	} else {
		if x >= shrub.x+2 then xspeed = 0.5
	}
if y >= shrub.y- 8 then yspeed = -0.9
if y <= shrub.y- 8 then yspeed = -1.5
}

if instance_exists(Obj_ThumpScreenBoss) {
grav = 0.015;
yspeed = 0;
xspeed = random_range(-2,2)	
}