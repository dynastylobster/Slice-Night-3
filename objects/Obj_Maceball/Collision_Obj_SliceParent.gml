/// @description Insert description here
// You can write your code in this editor
if other.object_index = Obj_SliceSide {
		if x > other.x then xspeed = 2
		if x < other.x then xspeed = -2
	}
if other.object_index = Obj_SliceDown {
		yspeed = -3;
	}
	
if other.object_index != Obj_FlameSlice {
		sliced = true
	}
other.done_slicing = true