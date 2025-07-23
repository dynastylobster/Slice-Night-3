/// @description Insert description here
// You can write your code in this editor
draw_self();

draw_set_alpha(timer/60)
draw_set_color(c_black)
draw_rectangle(camera_get_view_x(view_camera[0]),camera_get_view_y(view_camera[0]),camera_get_view_x(view_camera[0]+426),camera_get_view_y(view_camera[0])+300,false)
draw_set_color(c_white)
draw_set_alpha(1)