/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();

if instance_exists(Obj_Billy) {
if Obj_Billy.x > x
{image_xscale = 1} else image_xscale = -1	
}
age += 0.125
if age > 32 age = 0

xshift = x+sin(age)*1.5 

if alarm[0] <= 45 and !place_meeting(x,y,Obj_CannonBall) {
image_index = 1	
} else image_index = 0

if place_meeting(x,y,Obj_CannonBall) {
	image_index = 2
	}

if !global.paused {
if !place_meeting(x,y+yspeed,[Obj_Wall, autoTileCol]) 
{
y += yspeed
}

if yspeed < max_fallspeed yspeed += grav
	
	}


if global.paused {
alarm[0]++	
alarm[1]++
}