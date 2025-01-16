/// @description Insert description here
// You can write your code in this editor
if enemy != noone {
if !instance_exists(enemy) {
	instance_create_layer(enemy_x,enemy_y,layer_get_id("Instances_1"),enemytype)
	}
if instance_place(x,y,EnemyParentObject) {
enemy = instance_place(x,y,EnemyParentObject)
	}
}