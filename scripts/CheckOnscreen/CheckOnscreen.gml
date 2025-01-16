// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function CheckOnscreen(){
if x >= camera_get_view_x(view_camera[0]) and x <= camera_get_view_x(view_camera[0]) + 426 {
	if y >= camera_get_view_y(view_camera[0]) and y <= camera_get_view_y(view_camera[0]) + 240 {
	onscreen = true	
	}
} else onscreen = false;
}