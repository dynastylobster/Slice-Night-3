/// @description Insert description here
// You can write your code in this editor
if other.done_slicing = false and hit = false {
if hp = 4
{
if instance_exists(Obj_ParryBall) {
	with(Obj_ParryBall) {
		y-= 20
		}
	}
}
instance_create_depth(x,y,depth,Obj_EnemyHurtEffect)
audio_play_sound(Snd_EnemyExplode,0,0,1.5)
instance_create_layer(x+2,y,layer,Obj_EnemyFlameSpark)
instance_create_layer(x-2,y,layer,Obj_EnemyFlameSpark)
instance_create_layer(x+2,y-3,layer,Obj_EnemyFlameSpark)
instance_create_layer(x-2,y-3,layer,Obj_EnemyFlameSpark)
hit = true
alarm[1] = 45
hp -= 1
other.done_slicing = true
}
