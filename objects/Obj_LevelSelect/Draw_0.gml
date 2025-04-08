var f = draw_get_halign();
draw_set_halign(fa_center);
draw_sprite(Spr_MovePlatformBlue, 0, x, y + 8);
draw_sprite(Spr_MenuArrow, 0, x - 64, y + 8);



for (var o = -3; o < 4; o++) {
	if (pointer + o < array_length(roomlist) - 1 && pointer + o >= 0) {
		draw_text(x, y + (o * 32), roomlist[pointer + o]);
	}
}

draw_set_halign(f);