if (lc > 0 && warning == 0) {
	draw_line_color(x, y, x, y + 2000, c_yellow, c_yellow);
}
if (warning > 0) {
	image_index = 1;
	draw_line_color(x, y, x, y + 2000, c_red, c_red);
	warning--;
} else { image_index = 0; }
draw_self()