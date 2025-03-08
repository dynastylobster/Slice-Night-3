age++;

if (cold) {
	draw_sprite_ext(TemFlakes, 0, x, y, 1, 1, age % 360, c_white, 1);
	y++;
}

if (!cold) {
	draw_sprite_ext(TemFlakes, 1, x, y, 1, 1, age % 3600, c_white, 1);
	y += 3.5;
}