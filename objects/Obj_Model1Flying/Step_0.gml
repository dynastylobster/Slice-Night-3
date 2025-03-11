// Inherit the parent event
event_inherited();

if (age % 240 == 0) {
	railguntimer = 60;
	if (instance_exists(Obj_Billy)) {
		targPosX = Obj_Billy.x;
		targPosY = Obj_Billy.y;
	}
}
if (railguntimer == 1) {
	if (collision_line(x, y, targPosX, targPosY, Obj_Billy, true, true)) {
		HitPlayer();
	}
}
railguntimer--;
age++;