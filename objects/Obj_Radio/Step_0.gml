/// @description Insert description here
// You can write your code in this editor
if playing {
		image_speed = 1
		audio_stop_sound(global.music)
	} else {
		image_index = 0
		image_speed = 0
		if !audio_is_playing(global.music) {
				audio_play_sound(global.music,0,true,global.musicvolume);
			}
	}

if global.paused {
	audio_pause_sound(music)
	} else {
	audio_resume_sound(music)	
	}

if !audio_is_playing(music) {
		playing = false;
	}