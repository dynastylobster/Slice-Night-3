var f = draw_get_halign();
draw_set_halign(fa_center);
draw_sprite_ext(Spr_MovePlatformBlue, 0, x, y + 8,2.25,1,0,#006666,1);
draw_sprite_ext(Spr_MovePlatformBlue, 1, x-72, y + 8,1,1,0,c_white,1);
draw_sprite_ext(Spr_MovePlatformBlue, 1, x+72, y + 8,1,1,0,c_white,1);
draw_sprite(Spr_MenuArrow, age/2, x - 73, y + 8);
draw_sprite_ext(Spr_MenuArrow, age/2, x + 73, y + 8,-1,1,0,c_white,1);


for (var o = -7; o < 8; o++) {
	if (pointer + o < array_length(roomlist) - 1 && pointer + o >= 0) {
		draw_set_color(c_black)
		draw_text(x, y +1 + (o * 16), roomlist[pointer + o]);	
		
		draw_set_color(c_white)
		draw_text(x, y + (o * 16), roomlist[pointer + o]);
	}
}

draw_set_halign(f);