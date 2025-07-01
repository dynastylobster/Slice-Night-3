/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();

dir = 0;

if instance_exists(Obj_RotoJoJoFan) {
		if Obj_RotoJoJoFan.x < x then dir = 1
		if Obj_RotoJoJoFan.x > x then dir = -1
		
		parent = instance_nearest(x,y,Obj_RotoJoJoFan)
		
	}

