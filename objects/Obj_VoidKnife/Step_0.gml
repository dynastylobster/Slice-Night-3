var camx = camera_get_view_x(view_camera[0]);
if (x < camx) { instance_destroy(); }
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
		x -= 2.5;
		y += dink * 0.05;
}

if (immuneTimer > 0) {
image_index = !image_index;
}
immuneTimer--;