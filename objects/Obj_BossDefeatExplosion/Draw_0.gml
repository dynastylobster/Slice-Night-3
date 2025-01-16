/// @description Insert description here
// You can write your code in this editor
draw_self();
draw_sprite_ext(sprite_index,0,x,y,image_xscale,image_yscale,age,c_white,image_alpha)
draw_sprite_ext(sprite_index,0,x,y,image_xscale,image_yscale,age*4,c_white,image_alpha)
draw_sprite_ext(sprite_index,0,x,y,image_xscale,image_yscale,age*6,c_white,image_alpha)
draw_sprite_ext(sprite_index,0,x,y,image_xscale,image_yscale,age*8,c_white,image_alpha)
draw_set_alpha(image_alpha)
draw_circle(x,y,circle_rad,false);
draw_set_alpha(1)