/// @description Insert description here
// You can write your code in this editor
if active {
instance_create_layer(x+8,y+8,layer,Obj_EnemyHurtEffect)
audio_play_sound(Snd_Key,0,0)
instance_destroy();
}