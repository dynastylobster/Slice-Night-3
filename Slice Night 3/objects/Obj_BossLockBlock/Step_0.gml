/// @description Insert description here
// You can write your code in this editor
if instance_exists(BossParentObject) {
	image_speed = 0
	} else image_speed = 1

if image_index >= 2.5 {
	instance_create_layer(x,y,layer,Obj_EnemyFlameSpark)
	instance_create_layer(x,y,layer,Obj_EnemyFlameSpark)
	instance_create_layer(x,y,layer,Obj_EnemyFlameSpark)
	instance_create_layer(x,y,layer,Obj_EnemyFlameSpark)
	instance_destroy();
}