// Inherit the parent event
event_inherited();

if (collision_line(x, y, x, y + hoverHeight, [Obj_Wall, Obj_EnemyOnlyBlock, Obj_Slope, autoTileCol], false, true)) {
y--;
} else if (!collision_point(x, y + hoverHeight + 1, [Obj_Wall, Obj_EnemyOnlyBlock, Obj_Slope, autoTileCol], false, true)) {
y++;
}

if (instance_exists(Obj_Billy)) {
	
	if (distance_to_object(Obj_Billy) <= 50) {
		suckness++;
		if (suckness >= 10) { HitPlayer(); }
	} else { suckness--; }
	
	if (distance_to_object(Obj_Billy) <= 50 && phase != "Hunting") {
		phase = "Hunting";
	}
	if (distance_to_object(Obj_Billy) >= 200 && phase == "Hunting") {
		phase = "Finding";
	}
	
}

if (phase == "Hunting") {
targX = Obj_Billy.x;
x -= (x - targX) / 80;
}

if (phase == "Finding") {
targX = homeX + random_range(-100, 100);
phase = "Roaming";
}

if (phase == "Roaming") {
x -= (x - targX) / 200;
if (!(x + 1 < targX && x - 1 > targX) && age % 120 == 0) {
phase = "Finding";
}
}



age++;