/// @description Insert description here
// You can write your code in this editor
if place_meeting(x,y-2,Obj_Billy)
{
draw_sprite_ext(sprite_index,1,draw_x,y,1,image_yscale*(room_height/32),0,c_white,1)
draw_sprite_ext(sprite_index,0,draw_x,y,1,1,0,c_white,1)
} else {
	draw_sprite_ext(sprite_index,1,x,y,1,image_yscale*(room_height/32),0,c_white,1)
	draw_sprite_ext(sprite_index,0,x,y,1,1,0,c_white,1)
}