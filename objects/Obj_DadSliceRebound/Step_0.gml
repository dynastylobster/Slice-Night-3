/// @description Insert description here
// You can write your code in this editor
if !global.paused {
		yspeed += grav
		x+= xspeed
		y+= yspeed

	if place_meeting(x,y+4,Obj_Wall) {
			if alarm[0] < 90 {
				yspeed = -3	
			}
		}
		
	} else alarm[0]++