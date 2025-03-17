var billy = instance_find(Obj_Billy, 0);
var dist;
if (instance_exists(Obj_Light)) {
	with(billy) {
		dist = distance_to_object(Obj_Light);
	}
}

if (!surface_exists(darkMask)) {
	darkMask = surface_create(room_width, room_height);
}
surface_set_target(darkMask);

draw_set_alpha(clamp(dist / 300, 0, 1));
draw_set_color(c_black);
draw_rectangle(0, 0, room_width, room_height, false);
draw_set_alpha(1);
gpu_set_blendmode(bm_subtract);
draw_circle(billy.x, billy.y, 30, false);

for (var i = 0; i < instance_number(Obj_Light); i++) {
	var l = instance_find(Obj_Light, i);
	draw_circle(l.x, l.y, 30, false);
}

gpu_set_blendmode(bm_normal);
draw_set_color(c_white);

surface_reset_target();
draw_surface(darkMask, 0, 0);