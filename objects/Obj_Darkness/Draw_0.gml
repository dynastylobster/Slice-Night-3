if (!instance_exists(Obj_Billy)) { return; }
var billy = instance_find(Obj_Billy, 0);
playerSight = baseplayerSight * billy.hp;
var dist;
if (instance_exists(Obj_Lantern)) {
	with(billy) {
		dist = distance_to_object(Obj_Lantern);
	}
}

if (!surface_exists(darkMask)) {
	darkMask = surface_create(room_width, room_height);
}
surface_set_target(darkMask);

draw_set_color(c_black);
draw_set_alpha(0.15);
gpu_set_blendmode(bm_add);
draw_rectangle(0, 0, room_width, room_height, false);

draw_set_color(c_white);
draw_set_alpha(1);
gpu_set_blendmode(bm_subtract);
DrawCircle(billy.x, billy.y, playerSight);

for (var i = 0; i < instance_number(Obj_FlameSlice); i++) {
	var l = instance_find(Obj_FlameSlice, i);
	DrawCircle(l.x + (16 * l.image_xscale), l.y, baseplayerSight*1.5 )
}

for (var i = 0; i < instance_number(Obj_LanternOFF); i++) {
	var l = instance_find(Obj_LanternOFF, i);
	draw_sprite(Spr_LanternOff, 0, l.x, l.y);
}

for (var i = 0; i < instance_number(Obj_Lantern); i++) {
	var l = instance_find(Obj_Lantern, i);
	DrawCircle(l.x, l.y, playerSight * 1.2);
}

for (var i = 0; i < instance_number(Obj_Chomper); i++) {
	var l = instance_find(Obj_Chomper, i);
	DrawCircle(l.x, l.y, playerSight * 0.2);
}

gpu_set_blendmode(bm_normal);
draw_set_color(c_white);

surface_reset_target();
draw_surface(darkMask, 0, 0);

function DrawCircle(ex, wy, r) {
	draw_set_alpha(0.5);
	draw_circle(ex, wy, r, false);
	draw_set_alpha(0.1);
	draw_circle(ex, wy, r * 3, false);
	draw_set_alpha(1);
}