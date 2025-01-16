/// @description Insert description here
// You can write your code in this editor
var is_fullscreen = window_get_fullscreen()
if screenres > 900 {
	window_size = 5
	}
var window_width = camera_get_view_width(view_camera[0]) * window_size
var window_height = camera_get_view_height(view_camera[0]) * window_size
window_set_size(window_width,window_height);
view_hport[0] = 240 * window_size;
view_wport[0] = 426 * window_size;
surface_resize(application_surface,view_wport[0],view_hport[0]);

if is_fullscreen {
	window_size = 3
if screenres >= 720 {
	window_size = 3
}
if screenres > 900 {
	window_size = 4
	}
	
	var window_width = camera_get_view_width(view_camera[0]) * window_size
var window_height = camera_get_view_height(view_camera[0]) * window_size
window_set_size(window_width,window_height);
view_hport[0] = 240 * window_size;
view_wport[0] = 426 * window_size;
surface_resize(application_surface,view_wport[0],view_hport[0]);
	
window_set_fullscreen(false);	

window_set_position(display_get_width()/2,display_get_height()/2)
} else {
	window_set_fullscreen(true);
	}