/// @description Insert description here
// You can write your code in this editor
if active {

alarm[1] = 5
event_inherited();
if instance_exists(Obj_EnemyHurtEffect) {
with(Obj_EnemyHurtEffect) {
		instance_destroy();
	}
}

active = false;
}