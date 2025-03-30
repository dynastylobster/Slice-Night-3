/// @description Insert description here
// You can write your code in this editor
if !global.paused and room = creation_room {
	
if !audio_is_playing(Intro) {
	global.music = Loop
	if !audio_is_playing(Loop) audio_play_sound(global.music,0,true,global.musicvolume);
	}
}

if global.paused and audio_is_playing(Intro) {
audio_pause_sound(Intro)	
} else audio_resume_sound(Intro)

if global.paused and audio_is_playing(Loop) {
audio_pause_sound(Loop)	
} else audio_resume_sound(Loop)

if room != creation_room instance_destroy();