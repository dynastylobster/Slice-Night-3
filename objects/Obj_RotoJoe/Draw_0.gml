/// @description Insert description here
// You can write your code in this editor
if !figure8 {
draw_sprite_ext(sprite_index,3,x,y,45,1,point,c_white,1)
}
draw_sprite(sprite_index,1,start_x,start_y)
draw_sprite_ext(sprite_index,2,draw_x,draw_y,image_xscale,image_yscale,angle,c_white,1);


draw_sprite_ext(sprite_index,2,draw_x,draw_y,image_xscale,image_yscale,angle+45,c_white,1);


draw_sprite(sprite_index,0,draw_x,draw_y);
if blue{
	draw_sprite(Spr_RotoJoe_Blue,0,draw_x,draw_y);
}
