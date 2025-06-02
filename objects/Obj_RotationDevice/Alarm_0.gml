/// @description Insert description here
// You can write your code in this editor
if !audio_is_playing(Snd_GhostChomp) {
		alpha_inc = true;
	}

layer_set_visible(layer_get_id("Lay_ZOOM"),true)
layer_set_visible(layer_get_id("Lay_Shake_1"),true)
audio_play_sound(Snd_GhostChomp,0,0,global.SFXvolume*3,0,0.4)
audio_play_sound(Snd_GhostChomp,0,0,global.SFXvolume*2,0,0.3)
audio_play_sound(Snd_SliceReverse,0,0,global.SFXvolume*2,0,0.25)
audio_play_sound(Snd_SliceReverse,0,0,global.SFXvolume*2,0,0.1)
audio_play_sound(Snd_SliceReverse,0,0,global.SFXvolume,0,0.05)
audio_play_sound(Snd_Warning,0,0,global.SFXvolume*0.5,0,0.25)