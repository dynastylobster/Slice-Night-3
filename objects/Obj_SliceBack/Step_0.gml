/// @description Insert description here
// You can write your code in this editor
CheckOnscreen();
if onscreen {
	
if image_index < 1 image_speed = 0
if image_index >= 1 image_speed = 1;

if image_index > 4.5 {
	image_speed = 0;
	image_index = 0;	
}

if image_index >= 3 and cooldown = 0{
		if !place_meeting(x,y,Obj_SliceBackAttack) {
			audio_play_sound(Snd_Booster,0,0,global.SFXvolume,0,0.75)
			audio_play_sound(Snd_Slice,0,0,global.SFXvolume,0,0.75)
			instance_create_depth(x,y,depth-25,Obj_SliceBackAttack)	
			cooldown = 16
		}
		
	}
}

if !global.paused {
	if cooldown > 0 cooldown--
		age += 0.125
		if vertical y = starty+sin(age/4)*32
		if horizontal y = startx+sin(age/4)*32
	}