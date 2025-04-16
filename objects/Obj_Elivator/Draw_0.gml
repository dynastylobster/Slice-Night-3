/// @description Insert description here
// You can write your code in this editor
draw_self();


//no fucking clue why this doesnt work
if y > 1234 {
	draw_set_color(c_black)
	opacity+= 0.06
	draw_set_alpha(clamp(opacity,0,1))
		draw_sprite(sprite_index,image_index,x,y)
		draw_set_alpha(1)
		draw_set_color(c_white)
	}