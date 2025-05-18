/// @description Insert description here
// You can write your code in this editor
draw_sprite(sprite_index,image_index,x,y)
if x > camera_get_view_x(view_camera[0])+213 -16 and x < camera_get_view_x(view_camera[0])+213 + 16{
	draw_set_alpha(0.5);
	draw_sprite(sprite_index,image_index+1,x,y)
	draw_set_alpha(1);
}