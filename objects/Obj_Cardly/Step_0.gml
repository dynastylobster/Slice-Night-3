/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();

if !global.paused {
	
	if y <110 and alarm[3] <= 0 {
		alarm[3] = 8;	
	}
	
	if alarm[2] {
		if alarm[2] < 60 {
				sprite_index = Spr_CardlyLaugh
			}
		}

age += 0.125;
if age > 4096 age = 0;

if x < 32 {
		stage_right = true
	} else stage_right = false;
	
if x > room_width-32 {
	stage_left = true
} else stage_left = false

if !shooting and !masking {
		if abs(xspeed) < max_xspeed {
			if xspeed = 0 {
				dir = choose(-1,1)
			}
			xspeed += 0.125*dir
			}
			x -= xspeed
			y = lerp(y,(starty+(sin(age)*5)),0.25)
		
	} else xspeed = 0;
	
if stage_right or stage_left and !masking {
		if !place_meeting(x,y,Obj_CardlyDice) {
			instance_create_layer(x,y,layer,Obj_CardlyDice)
		}
	}
	
if masking {
		
		if instance_exists(Obj_Billy) {
		direction =	point_direction(x,y,Obj_Billy.x,Obj_Billy.y)
		speed = !global.paused
		}
	} else {
			speed = 0;
		}

	
} else {
		speed = 0;
		if alarm[0] != -4 then alarm[0]++
		if alarm[1] != -4 then alarm[1]++
		if alarm[2] != -4 then alarm[2]++
	}
if place_meeting(x,y,Obj_CardlyDice) {
		sprite_index = Spr_CardlyThrow 
		if instance_nearest(x,y,Obj_CardlyDice).x < x {
			image_xscale = -1	
		} else {
			image_xscale = 1	
		}
	} else image_xscale = 1;