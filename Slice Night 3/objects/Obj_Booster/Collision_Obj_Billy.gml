/// @description Insert description here
// You can write your code in this editor
if abs(other.xspeed) < 7 {
	sprite_index = Spr_BoosterActive
	alarm[0] = 25
	if !audio_is_playing(Snd_Booster)
	{audio_play_sound(Snd_Booster,0,0)}
	other.xspeed += image_xscale/0.25
	}