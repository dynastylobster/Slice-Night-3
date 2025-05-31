/// @description Insert description here
// You can write your code in this editor

if !local {
with (instance_create_depth(irandom_range(cam_x,max_camx),cam_y,depth,Obj_RainDrop)) {
		col = Obj_RainGenerator.col
	}
alarm[0] = 2

}

if local {
	if place_meeting(x,y,Obj_Billy) {
	with (instance_create_depth(irandom_range(cam_x,max_camx),cam_y,depth,Obj_RainDrop)) {
		col = Obj_RainGenerator.col
	}
	}
	alarm[0] = 2
	}