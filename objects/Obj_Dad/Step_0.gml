/// @description Insert description here
// You can write your code in this editor

image_speed = !global.paused;

if instance_exists(Obj_Billy) {
		if Obj_Billy.x < x {image_xscale = -1} else image_xscale = 1
	}
	
if !global.paused {
	if fadingin
	{
	if fadein > 0 fadein--
	if fadein = 1 image_index = 0
	if fadein = 1 sprite_index = Spr_Dad_Slicing
	}
if sprite_index = Spr_Dad_Slicing {
	
	if image_index < 1 and !audio_is_playing(Snd_SliceReverse) {
		audio_play_sound(Snd_SliceReverse,0,0,global.SFXvolume,0,0.9)	
	}
	
	if image_index >= 2 and image_index < 2.25 {
	audio_play_sound(Snd_GhostChomp,0,0,global.SFXvolume*2);	
	}
	
		if image_index > 2.25 {
			if !place_meeting(x+image_xscale*48,y,Obj_DadSlice) {
				instance_create_layer(x,y,layer,Obj_DadSlice);	
			}
		if place_meeting(x,y,Obj_Billy) {HitPlayer();}
		}
		
	if image_index < 2 {
		slicing_xspeed += 0.125
		if Obj_Billy.x < x {
			if x < 128 image_index= 1
		
		if x < room_width-48 x+= slicing_xspeed
		}
		if Obj_Billy.x > x {
		if x > room_width-128 image_index= 1
		if x > 48 x-= slicing_xspeed
		}
	}
		
	if image_index > 4.75
	{
		alarm[1] = choose(60,120);
			sprite_index = Spr_Dad_Idle
		}
	}
	
}