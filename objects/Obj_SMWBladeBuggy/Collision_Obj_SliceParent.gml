/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
if other.object_index = Obj_SliceDown {
	audio_play_sound(Snd_Land,0,0,global.SFXvolume*1.1,0,0.8)
	audio_play_sound(Snd_Dink,0,0,global.SFXvolume*2)
	audio_play_sound(Snd_Dink,0,0,global.SFXvolume*0.9,0,0.95)
	audio_play_sound(Snd_Dink,0,0,global.SFXvolume*0.4,0,0.8)
	instance_create_depth(x,y,depth,Obj_EnemyHurtEffect)
	other.done_slicing = true
} else {
event_inherited();
}