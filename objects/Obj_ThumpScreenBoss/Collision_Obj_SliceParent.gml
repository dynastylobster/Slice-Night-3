/// @description Insert description here
// You can write your code in this editor
if hit = false {
if other.done_slicing = false {
instance_create_depth(x,y,depth,Obj_EnemyHurtEffect)
audio_play_sound(Snd_EnemyExplode,0,0,1.5)
instance_create_layer(x+2,y,layer,Obj_EnemyFlameSpark)
instance_create_layer(x-2,y,layer,Obj_EnemyFlameSpark)
instance_create_layer(x+2,y-3,layer,Obj_EnemyFlameSpark)
instance_create_layer(x-2,y-3,layer,Obj_EnemyFlameSpark)
//hp -= 1
HitAnyone();
hit = true
alarm[0] = 60;
alarm[1] = 120
other.done_slicing = true
}
}