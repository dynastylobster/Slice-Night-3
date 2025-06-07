/// @description Insert description here
// You can write your code in this editor
draw_sprite_ext(Spr_maceball,1,x,y,room_height,1,point_direction(x,y,startx,0),c_white,1);
draw_sprite_ext(sprite_index,2,x,y,image_xscale,image_yscale,angle,c_white,1);
draw_sprite_ext(sprite_index,2,x,y,image_xscale,image_yscale,angle+45,c_white,1);
draw_sprite(sprite_index,image_index,x,y);