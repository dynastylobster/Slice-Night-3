/// @description Insert description here
// You can write your code in this editor
event_inherited();
if !global.paused {
		
		if instance_exists(Obj_Slope) {
			var slope = instance_nearest(x,y,Obj_Slope) {
					if slope.object_index != Obj_SlopeAssist {
						facing = sign(slope.image_xscale)	
					}
				}
		}
	//change diection now
	x += xspeed
	if facing = 1  {
		if xspeed < 3 xspeed += 0.125
	} if facing = -1 {
		if xspeed > -3 xspeed -= 0.125
	}
	
	if place_meeting(x+xspeed*1.5,y-2,Obj_Wall) {
		xspeed = -xspeed
		facing = !facing
		image_xscale = facing
	}
		if hp > 0 and y < room_height {
		while !place_meeting(x,y,Obj_Wall) and !place_meeting(x,y,Obj_Slope) {
			if place_meeting(x,y+4,Obj_Wall) or place_meeting(x,y+4,Obj_Slope) {
			y+= 1
			} else break;
		}
		
	if place_meeting(x,y+16,Obj_Wall) or place_meeting(x,y+16,Obj_Slope) {
			while !place_meeting(x,y+1,Obj_Slope) and !place_meeting(x,y+1,Obj_Wall) {
				y+= 0.25
			}
			while place_meeting(x+facing*4,y,Obj_Slope) {
				y-= 0.25	
			}
		}
	}
if !place_meeting(x,y+3,Obj_Wall) and !place_meeting(x,y+3,Obj_SlopeAssist) and facing != 0 {
			image_xscale = facing
		}
	}
