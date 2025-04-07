/// @description Insert description here
// You can write your code in this editor
circle_rad = 32
age = 0
circle_alpha = 0.8

if global.music != Sng_WalkerOfTheFinalDreamMusic {
		audio_stop_sound(global.music)
		GameObject.prevmusic = noone;
		global.music = noone
	}