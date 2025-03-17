if (age >= 60) {
	if (place_meeting(x, y, Obj_Billy)) {
		Obj_Billy.heat += 6;
	}
}
if (age >= 180) {
	age = irandom_range(-60, 0);
}
age++;