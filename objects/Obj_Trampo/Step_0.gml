/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();
CheckOnscreen();
draw_x = x
age+= 0.5;

if grounded image_index = 0;

if alarm[0] < 45 and alarm[0] != -4 and grounded {
	image_index = 2
}

if place_meeting(x,y+abs(yspeed),[Obj_Wall,Obj_EnemyOnlyBlock]) {
	if !grounded {
		alarm[0] = 120	
	}
		grounded = true;
	}

if grounded {
		yspeed = 0;
	}
	


if !grounded {
		image_index = 1;
	}
	
	
if global.paused {
		if alarm[0] > 0 alarm[0] ++
	}

if !global.paused {
		if !grounded {
		yspeed += grav
		}
		y+= yspeed
	}
if yspeed < 0 {
if place_meeting(x,y-4,[Obj_Wall,Obj_EnemyOnlyBlock]) {
		yspeed = 0;
	}
}
	
if instance_exists(Obj_Billy){
		if Obj_Billy.x < x then facing = -1
		if Obj_Billy.x > x then facing = 1
	}
	
if place_meeting(x,y+3,[Obj_Wall,Obj_EnemyOnlyBlock]) and !place_meeting(x,y+1,[Obj_Wall,Obj_EnemyOnlyBlock]) {
		if yspeed = 0 {
			y+= 1;	
		}
	}