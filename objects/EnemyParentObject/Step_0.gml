/// @description Insert description here
// You can write your code in this editor
if hp <= 0 {
audio_play_sound(Snd_BlockBreak,0,0)
audio_sound_pitch(Snd_EnemyExplode,random_range(0.8,1.3))
audio_play_sound(Snd_EnemyExplode,0,0,1.4)
instance_create_layer(x+2,y,layer,Obj_EnemyFlameSpark)
instance_create_layer(x-2,y,layer,Obj_EnemyFlameSpark)
instance_create_layer(x+2,y-3,layer,Obj_EnemyFlameSpark)
instance_create_layer(x-2,y-3,layer,Obj_EnemyFlameSpark)
hp -=1
}
if hp <= -2 instance_destroy()