// Inherit the parent event
event_inherited();

if (object_exists(Obj_Billy)) {
if (distance_to_object(Obj_Billy) <= 50) {
	draw_line_width_color(x, y, Obj_Billy.x, Obj_Billy.y, 1 + age % 3, c_red, c_red);
}
}