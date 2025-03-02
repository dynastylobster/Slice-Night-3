/// @description Insert description here
// You can write your code in this editor
if x < camera_get_view_x(view_camera[0]) or x > camera_get_view_x(view_camera[0])+426 {
		instance_destroy();
	}