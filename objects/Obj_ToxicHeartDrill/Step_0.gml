/// @description Insert description here
// You can write your code in this editor
if !global.paused {
		
		if instance_exists(Obj_Billy) {
			if Obj_Billy.x < x and xspeed > -max_xspeed {
				xspeed -= 0.1	
			}
		
		if Obj_Billy.x > x and xspeed < max_xspeed {
				xspeed += 0.1	
			}
		}
		if yspeed < max_yspeed yspeed += 0.0125
		
		y+= yspeed;
		x+= xspeed;
	}