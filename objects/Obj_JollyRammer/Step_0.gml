/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();

if !global.paused {
	age += 0.25
if instance_exists(Obj_Billy)
		
		if ramming {
				if dir = -1 image_index = 0
				if dir = 1 image_index = 2
				
				if !place_meeting(x+xspeed*1.25,y,[Obj_Wall, autoTileCol]) {
						if abs(xspeed) < max_xspeed then xspeed += dir*0.25
					} else {
							xspeed = 0
							alarm[0] = 60
							ramming = false
						}
				
			} else {
				image_index = 1;
				if alarm[0] > 0 and alarm[0] < 25 {
						if age % 2 > 0.5 then image_index = 3
					}
			}
		x+= xspeed
		
		if instance_exists(Obj_BasketBallSpikey) {
			if distance_to_object(Obj_BasketBallSpikey) <= 64 and Obj_BasketBallSpikey.y > y-36 {
			if Obj_BasketBallSpikey.x > x then dir = -1
			if Obj_BasketBallSpikey.x < x then dir = 1
			if !place_meeting(x+xspeed*1.25,y,[Obj_Wall, autoTileCol]) {
					//	if abs(xspeed) < max_xspeed then xspeed += dir*0.25
					}
			if Obj_BasketBallSpikey.x > x then xspeed -=0.05125
			if Obj_BasketBallSpikey.x < x then xspeed +=0.05125
			}
	}
}
	while place_meeting(x,y,[Obj_Wall, autoTileCol]) {
		if x < 200 x+= 0.25
		if x > 200 x-= 0.25
	}
	
if global.paused {
		if alarm[0] > 0 alarm[0]++
	}