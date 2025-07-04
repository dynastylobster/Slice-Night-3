/// @description Insert description here
// You can write your code in this editor
with(instance_create_layer(x,y,layer,Obj_EnemyFlameTrail)) {
		sprite_index = instance_nearest(x,y,Obj_EnemyFlameSpark).sprite_index
		image_index = 1
	}
alarm[1] = 8