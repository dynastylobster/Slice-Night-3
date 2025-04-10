/// @description Insert description here
// You can write your code in this editor

if place_meeting(x,y,Obj_DrillChute) {
audio_stop_sound(Snd_FishJump)		
}
if !global.paused {
		
		if instance_exists(Obj_Billy) and !place_meeting(x,y,Obj_DrillChute) {
			if Obj_Billy.x < x and xspeed > -max_xspeed {
				xspeed -= 0.1	
			}
		
		if Obj_Billy.x > x and xspeed < max_xspeed {
				xspeed += 0.1	
			}
		}
		if yspeed < max_yspeed yspeed += 0.0125
		
		y+= yspeed*image_yscale ;
		x+= xspeed;
	}