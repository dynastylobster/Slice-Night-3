var paw = 2;
if (!right) {
	image_xscale = -1;
	paw = 3;
}
var colors = [c_black, c_white];
var color = 0;
var targX = 0;
if (instance_exists(Obj_VoidBoss)) {
targX = Obj_VoidBoss.x;
if (Obj_VoidBoss.currentPhase >= 4) {
color = 1;
colors[0] = #0019A8;
}
if (Obj_VoidBoss.currentPhase == 4) {
color = 1;
image_index = paw;
depth = 350;
} else if (Obj_VoidBoss.currentPhase == 6) {
depth = 800;
image_index = paw;
}
}
var bonus = 0;
if (right) { bonus = 0; } else { bonus = -2; }
draw_line_width_color(x + bonus, y + 20, x + bonus, y + 1000, 26, colors[!color], colors[!color]);
draw_line_width_color(x + bonus, y + 20, x + bonus, y + 1000, 24, colors[color], colors[color]);

draw_self();

if (instance_exists(Obj_VoidBoss)) {
if (Obj_VoidBoss.laserPhase == 2) {
draw_sprite(Spr_VoidBullet2, age % 4, x, y);
if (age % 6 == 0) {
image_index++;
if (image_index > 3) { image_index = 2; }
}
} else if (Obj_VoidBoss.currentPhase == 5) {
image_index = paw;
}
}
age++;