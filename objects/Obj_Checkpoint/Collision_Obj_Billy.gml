/// @description Insert description here
// You can write your code in this editor
if room = creation_room {
if image_index != 1 {
	audio_play_sound(Snd_Checkpoint,0,0,global.SFXvolume*5)
	alarm[1] = 15
}
Obj_Checkpoint.image_index = 0
image_index = 1
}