/// @description Insert description here
// You can write your code in this editor
if !preactive
{alarm[0] = 60;
		repeat(7) {
	global.confetti_id += 1
	instance_create_depth(x,y,depth+10,Obj_Confetti)
}
}
preactive = true;
Obj_Billy.x = x;
Obj_Billy.y = y-7;
Obj_Billy.yspeed = 0
Obj_Billy.grounded = true;
camera_set_view_pos(view_camera[0],clamp(x-213-sin(age*16)*1,0,room_width),clamp(y-120,0,room_height-240))
GameObject.cam_x = camera_get_view_x(view_camera[0])
GameObject.cam_y = camera_get_view_y(view_camera[0])
Obj_Billy.cam_x = camera_get_view_x(view_camera[0])
Obj_Billy.cam_y = camera_get_view_y(view_camera[0])
Obj_Billy.true_cam_x = camera_get_view_x(view_camera[0])
Obj_Billy.true_cam_y = camera_get_view_y(view_camera[0])