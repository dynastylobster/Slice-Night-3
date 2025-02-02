/// @description Insert description here
// You can write your code in this editor
if image_index >= 16 image_speed = 0;

if image_index > 6 and image_index < 8 {
	if !audio_is_playing(Snd_SunImplode) {
	audio_play_sound(Snd_SunImplode,0,0,global.musicvolume)
	audio_play_sound(Snd_SunImplode,0,0,global.musicvolume/1.5,0,0.4)
	audio_play_sound(Snd_BlockBreak,0,0,global.SFXvolume*2,0,0.6)
	audio_play_sound(Snd_BlockBreak,0,0,global.SFXvolume*2,0,0.4)
	
	var shakelay = layer_get_id("Effect_1")
	layer_set_visible(shakelay,true)
	}
}

if image_index > 14 {
	var shakelay = layer_get_id("Effect_1")
	layer_set_visible(shakelay,false)
}