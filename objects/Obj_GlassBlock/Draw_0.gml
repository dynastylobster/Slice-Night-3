/// @description Insert description here
// You can write your code in this editor
if !broke {
	draw_self();	
}
if broke {
	 if alarm[0] >= 20 draw_self();
	 if alarm[0] < 20 draw_sprite(sprite_index,image_index,draw_x,y)
	}