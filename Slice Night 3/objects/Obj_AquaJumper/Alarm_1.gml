/// @description Insert description here
// You can write your code in this editor
if global.music != noone
{
audio_resume_sound(global.music)
}
audio_play_sound(Snd_BlockBreak,0,0)
instance_create_layer(x+2,y,layer,Obj_EnemyFlameSpark)
instance_create_layer(x-2,y,layer,Obj_EnemyFlameSpark)
instance_create_layer(x+2,y-3,layer,Obj_EnemyFlameSpark)
instance_create_layer(x-2,y-3,layer,Obj_EnemyFlameSpark)
instance_create_layer(x,y,layer,Obj_EnemyHurtEffect)
 instance_destroy()