/// @description Insert description here
// You can write your code in this editor
if audio_is_playing(Snd_EnemyExplode) {
audio_stop_sound(Snd_EnemyExplode);	
}
if image_index > 2 {
audio_play_sound(Snd_BlockBreak,0,0,global.SFXvolume*0.125)
audio_play_sound(Snd_CardlyLaugh,0,0,global.SFXvolume*2);	
} else {
audio_play_sound(Snd_BlockBreak,0,0,global.SFXvolume*0.25)	
}