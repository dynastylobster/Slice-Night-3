if (age > 2400) { instance_destroy(); }
if (instance_exists(Obj_VoidBoss)) {
if (Obj_VoidBoss.currentPhase >= 4) {
image_index = 1;
} else {
image_index = 0;
}
if (Obj_VoidBoss.currentPhase != spawnedPhase) {
instance_destroy();
}
}

if !global.paused {
		x += (left) ? 2.5 : -2.5;
		y += dink * 0.05;
}

if (immuneTimer > 0) {
image_index = !image_index;
}
immuneTimer--;
age++;