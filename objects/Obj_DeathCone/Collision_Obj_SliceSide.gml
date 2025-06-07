/// @description Insert description here
// You can write your code in this editor
if !used {
		audio_play_sound(Snd_GhostChomp,0,0,global.SFXvolume,0,1.1)
	}
used = true;
if other.x > x then dir = -1
if other.x < x then dir = 1
other.done_slicing = true;