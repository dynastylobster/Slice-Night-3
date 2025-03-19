if (age > 120 && distance_to_object(Obj_Billy) < 200) {
	targX = Obj_Billy.x + irandom_range(-250, 250);
	targY = Obj_Billy.y + irandom_range(-250, 250);
	age = 0;
}
if (x > targX + 1 || x < targX - 1) { 
	x -= ((x - targX) * (0.01));
}
if (y > targY + 1 || y < targY - 1) {
	y -= ((y - targY) * (0.01));
}

age++;