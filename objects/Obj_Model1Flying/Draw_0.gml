// Inherit the parent event
event_inherited();

if (railguntimer == 1) {
	draw_line_color(x, y, targPosX, targPosY, c_red, c_red);
}
if (railguntimer > 0 && railguntimer % 4 < 1) {
	draw_line_color(x, y, targPosX, targPosY, c_red, c_red);
} 