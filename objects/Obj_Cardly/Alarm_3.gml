/// @description Insert description here
// You can write your code in this editor
if y < 100 and !global.paused { 
	var _x = irandom_range(-16,16)
	var _y = irandom_range(-16,16)
		instance_create_depth(x+_x,y+_y+10,depth,Obj_CardlySpade);
	}
alarm[3] = 8;