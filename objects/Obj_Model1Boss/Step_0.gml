/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
if active {

if instance_exists(Obj_Billy) {
		if Obj_Billy.x < x image_xscale = -1
		if Obj_Billy.x >= x image_xscale = 1
	}


event_inherited();

if place_meeting(x,y+4,Obj_Wall) {
	if abs(xspeed) < 1 sprite_index = Spr_model1_idle
	if abs(xspeed) > 1 sprite_index = Spr_model1_walk
} else if !TP{
		sprite_index = Spr_model1_jump
		if yspeed <= 0 image_index = 0
		if yspeed > 0 image_index = 1
	}



if instance_exists(Obj_Maceball) {
	if Obj_Maceball.age < 40	{
		sprite_index = Spr_model1_attack
		}
	}
if place_meeting(x,y-3,Obj_SliceDown) {
	downsliced = 30
	sprite_index = Spr_model1_downslice;	
}
if downsliced > 0 downsliced--
if downsliced sprite_index = Spr_model1_downslice



if !global.paused {

	
	if instance_exists(Obj_Maceball) {
		if Obj_Maceball.age > 90 {
			yanking = true
		}
	}
	
if yanking and !TP {
	if instance_exists(Obj_Maceball) {
	direction =	point_direction(x,y,Obj_Maceball.x,Obj_Maceball.y)
	if Obj_Maceball.x < x {image_xscale = -1} else image_xscale = 1
	} else yanking = false;
	if speed = 0 speed = 4;
	if speed <= 5 speed += 0.125
	yspeed = 0
	xspeed = 0
	sprite_index = Spr_model1_downslice;
	} else {
	speed = 0	
	}
	
	if place_meeting(x,y+4,Obj_Wall) {
		if abs(xspeed) <= 2 {
		if Obj_Billy.x > x xspeed += 0.25
		if Obj_Billy.x < x xspeed -= 0.25
		}
		
	} else {
		if abs(xspeed) <3 xspeed *= 0.95
		if abs(xspeed) >= 3 xspeed *= 0.985
		}
	
	if y < 100 {
		if !instance_exists(Obj_Maceball) {
				var _ballmake = irandom_range(0,100)
				if _ballmake <= 20 {
						instance_create_layer(x,y,layer,Obj_Maceball)
					}
			}
	}
	
	if !place_meeting(x,y+yspeed,Obj_Wall) {
		yspeed += grav
	} else {
	yspeed = 0	
	}
		y+= yspeed
	
	if !place_meeting(x+xspeed,y,Obj_Wall) {
		x+= xspeed
	}
	
		
	if TP {
		xspeed = 0;
		speed = 0;
		with(Obj_Maceball) {
			instance_destroy();	
		}
		sprite_index = Spr_model1_teleport
		if image_index = 1 and !audio_is_playing(Snd_SliceReverse) {
			audio_play_sound(Snd_SliceReverse,0,0,global.SFXvolume,0,0.75)	
		}
		
		if image_index >= 4 {
			var _dest = choose(48,room_width-48,213)
			if _dest < Obj_Billy.x +90 and _dest > Obj_Billy.x-90 {
			 _dest = choose(48,room_width-48,213)
			} else {
				instance_create_layer(x,y,layer,Obj_tp_ball)
				x = _dest
				y = starty
				repeat(10) {
					var _x = x+random_range(-16,16)
					var _y = y+random_range(-16,16)
					instance_create_layer(_x,_y,layer,Obj_GoalBoxSparkle);
				}
				yspeed = 0
				xspeed = 0
				TP = false
			}
		}
	}
	
}
while place_meeting(x,y+1,Obj_Wall) {
	yspeed = 0
	y-= 0.25	
}

if global.paused {
	if alarm[0] > 0 {
	alarm[0]++
	}
	
	alarm[1]++
}

if global.paused {
		speed = 0
	}
	
if hp <= 4 {
	if phase != 2 {
		alarm[2] = 60;
	phase = 2;		
		}

}

}

if place_meeting(x-4,y,Obj_Wall) {
	xspeed = clamp(xspeed,0,4)	
}
if place_meeting(x+4,y,Obj_Wall) {
xspeed = clamp(xspeed,-4,0)	
}