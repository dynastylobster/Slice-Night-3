/// @description Insert description here
// You can write your code in this editor
if age <= 15 {
draw_sprite_ext(sprite_index,image_index,x,y,1,1,angle,c_white,1);
}

if age > 15 {
		if age % 2 > 0.5 draw_sprite_ext(sprite_index,image_index,x,y,1,1,angle,c_white,1);
	}