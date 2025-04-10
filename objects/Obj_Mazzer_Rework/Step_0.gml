// Inherit the parent event
event_inherited();

CheckOnscreen();

if (!global.paused) {
	if (attackTimer > 30 * phaseSpeed) {
		lasering = !lasering;
		attackTimer = 0;
	}
	if (constant || lasering) {
		for (var o = 0; o < 12; o++) {
		nearest = noone;
		var close = infinity;
		collision_line_list(x, y, x + xbon, y + ybon, targobj, false, false, list, true);
		for (var i = 0; i < ds_list_size(list); i++) {
			var dist = distance_to_object(list[| i]);
			if (dist < close) {
				close = dist;
				nearest = list[| i];
			}
		}
		ds_list_clear(list);
		ybonA = [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0];
		xbonA = [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0];
		if (instance_exists(nearest)) {
			if (nearest.object_index == Obj_Billy || nearest.object_index == Obj_MetalBlock) {
				nearest.heat += 5;
			}
			if (dir == "Up") { array_set(ybonA, o, -10000 - (distance_to_point(x, nearest.y) * -1)); }
			if (dir == "Down") { array_set(ybonA, o, 10000 - distance_to_point(x, nearest.y)); }
			if (dir == "Left") { array_set(xbonA, o, -10000 - (distance_to_point(nearest.x, y) * -1)); }
			if (dir == "Right") { array_set(xbonA, o, 10000 - distance_to_point(nearest.x, y)); }
		}
		}
	}

attackTimer++;
age++;
}