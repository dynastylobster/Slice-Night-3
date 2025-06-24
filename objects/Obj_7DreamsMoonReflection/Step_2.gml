/// @description Insert description here
// You can write your code in this editor
// layer_x(layer_get_id("Bg_1"),camera_get_view_x(view_camera[0])/1.25);
 // layer_y(layer_get_id("Bg_1"), 16+ clamp((camera_get_view_y(view_camera[0])*0.94),room_height-480,room_height));
 
 x = camera_get_view_x(view_camera[0])
 y = layer_get_y(layer_get_id("Bg_1"))