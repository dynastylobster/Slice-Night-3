/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();
age+= 1
if age >= 360 age = 0

if instance_exists(wormhead) {
		direction = point_direction(x,y,wormhead.x,wormhead.y)


if global.paused {
		speed = 0;
	} else {
		 speed = wormhead.speed	
		if place_meeting(x,y,wormhead) {
				direction = point_direction(wormhead.x,wormhead.y,x,y)
			}
	}
	
	} 
	
	else
	
	{
	speed = 0;
	
	}
	
if !instance_exists(origin_wormhead) {
		instance_destroy();
	}