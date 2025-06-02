/// @description Insert description here
// You can write your code in this editor
if place_meeting(x,y-2,Obj_Billy) {
		if Obj_Billy.grounded = true {
			if !falling {
			audio_play_sound(Snd_GhostChomp,0,0,global.SFXvolume*2,0,0.5)	
			}
			falling = true;	
		}
	}

if falling {
		if yspeed < 0.75 and !audio_is_playing(Snd_Land) {
		audio_play_sound(Snd_Land,0,0,global.SFXvolume*2)	
		}
		if yspeed < 2.25 yspeed += grav;
		draw_x = irandom_range(x-1,x+1)
	}
	
	y+= yspeed;