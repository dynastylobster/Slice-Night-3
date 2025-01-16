/// @description Insert description here
// You can write your code in this editor
if active {
instance_create_layer(x,y,layer,Obj_EnemyHurtEffect)
audio_play_sound(Snd_FishJump,0,0,3,0,1)
audio_play_sound(Snd_FishJump,0,0,3,0,1)
audio_play_sound(Snd_FishJump,0,0,3,0,1)
audio_play_sound(Snd_jump,0,0,1,0,0.9)
other.dashes += 1

active = false
}