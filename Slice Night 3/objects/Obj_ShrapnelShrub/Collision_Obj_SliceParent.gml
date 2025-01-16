/// @description Insert description here
// You can write your code in this editor
if other.done_slicing = false {
audio_play_sound(Snd_BlockBreak,0,0)
instance_create_depth(x+4,y,depth,Obj_EnemyFlameSpark)
instance_create_depth(x-2,y,depth,Obj_EnemyFlameSpark)
instance_create_depth(x+4,y-3,depth,Obj_EnemyFlameSpark)
instance_create_depth(x-2,y-3,depth,Obj_EnemyFlameSpark)
instance_create_depth(x,y,depth,Obj_EnemyHurtEffect)
other.done_slicing = true
alarm[0] = 2
}
