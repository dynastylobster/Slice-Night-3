/// @description Insert description here
// You can write your code in this editor

gpu_set_blendmode(bm_add)
draw_set_color(c_purple)
draw_set_alpha(whole_alpha)

draw_sprite_ext(sprite_index,image_index,x,y,image_xscale,image_yscale,image_angle,c_white,image_alpha*whole_alpha)
draw_sprite_ext(sprite_index,0,x,y,image_xscale,image_yscale,age,c_purple,image_alpha*whole_alpha)
draw_sprite_ext(sprite_index,0,x,y,image_xscale,image_yscale,age*4,c_purple,image_alpha*whole_alpha)
draw_sprite_ext(sprite_index,0,x,y,image_xscale,image_yscale,age*6,c_purple,image_alpha*whole_alpha)
draw_sprite_ext(sprite_index,0,x,y,image_xscale,image_yscale,age*8,c_purple,image_alpha*whole_alpha)
draw_set_alpha(image_alpha*whole_alpha)
draw_circle(x,y,circle_rad,false);

gpu_set_blendmode(bm_normal)
draw_set_alpha(1);