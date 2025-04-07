/// @description Insert description here
// You can write your code in this editor
if !audio_is_playing(Sng_BossMusic) {
		audio_play_sound(Sng_BossMusic,0,true,global.musicvolume,0,0.7)
	}
touchingwall = false
phase = 1;
startx = x
starty = y
hit = false;
active = true
alarm[1] = 100;
speed = 0;
dir = 0
alarm[0] = 80;