/// @description Insert description here
// You can write your code in this editor

if other.done_slicing = false {
hit = true
instance_create_depth(x,y-10,depth,Obj_EnemyHurtEffect)
audio_play_sound(Snd_BlockBreak,0,0)
if instance_exists(Obj_BoomTube) {
direction = point_direction(x,y,instance_nearest(x,y,Obj_BoomTube).x,instance_nearest(x,y,Obj_BoomTube).y)
} else direction = 90
speed = 3
if sprite_index = Spr_CannonBallGreen or sprite_index = Spr_BoomTubeBallSMW {
alarm[0] = 1
}
other.done_slicing = true
}