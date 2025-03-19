depth = 1;
darkMask = -4;

if (!surface_exists(darkMask)) {
	darkMask = surface_create(room_width, room_height);
}
surface_set_target(darkMask);
draw_set_color(c_black);
draw_set_alpha(1);
draw_rectangle(0, 0, room_width, room_height, false);
surface_reset_target();
draw_surface(darkMask, 0, 0);