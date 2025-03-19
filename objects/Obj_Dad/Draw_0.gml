/// @description Insert description here
// You can write your code in this editor

var blackholeleft = false
var blackholeright = false
	
	if x < 77 then blackholeleft = true
	if x > 250 then blackholeright = true
	
	if place_meeting(x,y+6,Obj_Wall) {
		if !blackholeleft and !blackholeright 	draw_sprite_ext(Spr_BillyShadow,0,x,y+19+(floor(image_index)),2,1.5,0,c_black,1);	
		if blackholeleft draw_sprite_ext(Spr_BillyShadow,1,x,y+19+(floor(image_index)),2,1.5,0,c_black,1);	
		if blackholeright draw_sprite_ext(Spr_BillyShadow,2,x,y+19+(floor(image_index)),2,1.5,0,c_black,1);	
	}


draw_self();
draw_sprite_ext(sprite_index,image_index,x,y,image_xscale,image_yscale,image_angle,c_black,fadein/60)
