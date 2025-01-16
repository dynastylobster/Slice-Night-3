/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event

if other.object_index = Obj_SliceSide or other.object_index = Obj_SliceDown {

if other.done_slicing = false {
	alarm[0] = 60
	alarm[1] = 120
	}

event_inherited();
if other.done_slicing {
	hit = true;
	alarm[2] = 45
	}
	
}
