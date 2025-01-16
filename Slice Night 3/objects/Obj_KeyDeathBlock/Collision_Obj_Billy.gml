/// @description Insert description here
// You can write your code in this editor
if active {
if killed = false {
audio_play_sound(Snd_BlockBreak,0,0)
instance_create_layer(x+8,y+8,layer,Obj_EnemyFlameSpark)
instance_create_layer(x+8,y+8,layer,Obj_EnemyFlameSpark)
instance_create_layer(x+8,y+8,layer,Obj_EnemyFlameSpark)
instance_create_layer(x+8,y+8,layer,Obj_EnemyFlameSpark)
instance_create_layer(x+10,y+8,layer,Obj_EnemyFlameSpark)
instance_create_layer(x+10,y+8,layer,Obj_EnemyFlameSpark)
instance_create_layer(x+10,y+8,layer,Obj_EnemyFlameSpark)
instance_create_layer(x+10,y+8,layer,Obj_EnemyFlameSpark)
HitPlayer();
Obj_Billy.hp = 0
Obj_Billy.dead = true
killed = true
}
}