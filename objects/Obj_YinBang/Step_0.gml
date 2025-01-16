/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();

if !global.paused {
		
			y += yspeed
			x += xspeed
		
	if !place_meeting(x,y+abs(yspeed),[Obj_Wall,Obj_EnemyOnlyBlock]) {
			yspeed += grav 
		}
		
	if place_meeting(x,y+2,[Obj_Wall,Obj_EnemyOnlyBlock]) {
			xspeed = dir*2
			yspeed = -jumpspeed
			dir = choose(-1,1)
		}
		
	}
	
	if place_meeting(x+3,y,[Obj_Wall,Obj_EnemyOnlyBlock]) {
		xspeed = -2
		dir = -1
	}
	if place_meeting(x-3,y,[Obj_Wall,Obj_EnemyOnlyBlock]) {
		xspeed = 2
		dir = 1
	}
	
if dir = -1 then image_index = 2;
if dir = 1 then image_index = 1;
