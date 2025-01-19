/// @description Insert description here
// You can write your code in this editor

if !global.paused {
	
if yspeed < max_yspeed yspeed += 0.0125
if instance_exists(Obj_Billy) {
		if Obj_Billy.x < x {
			if xspeed > -max_xspeed	{
				xspeed -= 0.1	
			}
		}
		if Obj_Billy.x > x {
			if xspeed < max_xspeed	{
				xspeed += 0.1	
			}
		}
	}
 x+= xspeed;
 y+= yspeed;
}

if y >= room_height {instance_destroy()}