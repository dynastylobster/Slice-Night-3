/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
if place_meeting(x,y,Obj_FlameSlice) {
		with(instance_nearest(x,y,Obj_FlameSlice)) {
		instance_destroy();
		}
	} else {
event_inherited();
	}