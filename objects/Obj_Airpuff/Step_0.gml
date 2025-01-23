/// @description Insert description here
// You can write your code in this editor

if (image_index > 0 and image_index < 1) and !global.paused and !playedsound{
		audio_play_sound(Snd_Puff,1,0,global.SFXvolume,0,random_range(0.9,1.2));
		playedsound = true
	}
if image_index > 7 playedsound = false;