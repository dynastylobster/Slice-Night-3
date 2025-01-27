if (!right) {
	image_xscale = -1;
}
var colors = [c_black, c_white];
var color = 0;
var targX = 0;
if (instance_exists(Obj_VoidBoss)) {
targX = Obj_VoidBoss.x;
if (Obj_VoidBoss.currentPhase >= 4) {
color = 1;
image_index = 1;
}
}
var bonus = 0;
if (right) { bonus = 0; } else { bonus = -2; }
draw_line_width_color(x + bonus, y + 20, x + bonus, y + 1000, 26, colors[!color], colors[!color]);
draw_line_width_color(x + bonus, y + 20, x + bonus, y + 1000, 24, colors[color], colors[color]);
draw_self();