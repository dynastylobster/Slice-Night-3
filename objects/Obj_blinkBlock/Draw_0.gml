/// @description Insert description here
// You can write your code in this editor
draw_self()
if flashing {
image_alpha = 0
draw_sprite_ext(sprite_index,1,x,y,image_xscale,image_yscale,image_angle,c_white,1)
} else image_alpha = 1