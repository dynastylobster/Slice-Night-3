/// @description Insert description here
// You can write your code in this editor

CheckOnscreen();

if onscreen {

if image_index >= 2 and image_index < 3 {
		if !audio_is_playing(Snd_Land) {
			audio_play_sound(Snd_Land,0,0,global.SFXvolume*2.5,0,0.5);	
		}
	}
if image_index >= 8 and image_index < 9 {
		if !audio_is_playing(Snd_Glass) {
			audio_play_sound(Snd_Glass,0,0,global.SFXvolume*2,0,0.8)
			audio_play_sound(Snd_Glass,0,0,global.SFXvolume,0,1)
			shaking = true;
			alarm[0] = 25
		}
	}
	
if shaking {
	x = startx+random_range(-1,1)
} else {
	x = startx
	}
	
} else {
	image_index = 0;
	image_speed = 1;
	}


if image_index >= 9 {
		image_speed = 0
	}