/// @description Insert description here
// You can write your code in this editor
instance_create_layer(x+8,y+8,layer,Obj_EnemyHurtEffect)
audio_play_sound(Snd_Key,0,0,1,0,1.2)
audio_play_sound(Snd_Key,0,0,1,0,0.9)
instance_destroy();