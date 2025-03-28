/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
if other.object_index = Obj_SliceDown {
	instance_create_depth(x,y,depth,Obj_EnemyHurtEffect)
	other.done_slicing = true
} else {
event_inherited();
}