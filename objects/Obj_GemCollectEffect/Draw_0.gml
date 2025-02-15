/// @description Insert description here
// You can write your code in this editor

gpu_set_blendmode(bm_add)
draw_set_color(c_purple)

draw_self();
draw_sprite_ext(sprite_index,0,x,y,image_xscale,image_yscale,age,c_purple,image_alpha)
draw_sprite_ext(sprite_index,0,x,y,image_xscale,image_yscale,age*4,c_purple,image_alpha)
draw_sprite_ext(sprite_index,0,x,y,image_xscale,image_yscale,age*6,c_purple,image_alpha)
draw_sprite_ext(sprite_index,0,x,y,image_xscale,image_yscale,age*8,c_purple,image_alpha)
draw_set_alpha(image_alpha)
draw_circle(x,y,circle_rad,false);
draw_set_alpha(1)

gpu_set_blendmode(bm_normal)