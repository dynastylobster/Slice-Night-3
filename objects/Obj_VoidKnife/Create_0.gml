x = camera_get_view_x(view_camera[0]) + 413 + random_range(100, 200);
if instance_exists(Obj_Billy) {
y = Obj_Billy.y + random_range(-20, 20);
} else {
y = 0;
}

dink = 0;
immuneTimer = 0;

spawnedPhase = 0
if (instance_exists(Obj_VoidBoss)) {
spawnedPhase = Obj_VoidBoss.currentPhase;
if (Obj_VoidBoss.currentPhase >= 4) {
image_index = 1;
} else {
image_index = 0;
}
}