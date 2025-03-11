if (irandom_range(0, 60) == 1 && lc == 0) {
	lc = irandom_range(6, 28);
	warning = 60;
}

if (lc > 0 && warning = 0) {
	if (collision_line(x, y, x, y + 200, Obj_Billy, true, true)) {
		HitPlayer();
	}
	lc--;
}