// Inherit the parent event
event_inherited();

//y = camera_get_view_y(view_camera[0]) + 75;

/*
Phase 1: Tears.
Phase 2: Knives.
Phase 3: Tears and knives.
Phase 4: Laser.
*/



if (phase > ephase) {
ephase = phase;
attackTimer = 0;
}

if (phase == 1 || phase <= 3) {
if (attackTimer % 30 == 0) {
// spawn tear attack
}
}

if (phase <= 2) {
if (attackTimer % 75 == 0) {
// spawn knife attack
}
}

if (phase == 4) {
if (attackTimer % 120 == 0) {
lasering = !lasering;
}
}

function LaserHands(){
var randX = random_range(-200, 200);
var randY = random_range(-200, 200);
// teleport hand 1.

randX = random_range(-200, 200);
randY = random_range(-200, 200);
// teleport hand 2.

lasering = true;
}

if (lasering){
// draw laser and damage touching
}

if (phase == 1) {
	counter++;
	if (counter >= 600) {
		instance_create_layer(190, 414, "Instances_1", Obj_FlashButton);
		counter = 0;
	}
}
if (phase == 2) {
	counter++;
	if (counter >= 960) {
		instance_create_layer(1070, 150, "Instances_1", Obj_FlashButton);
		counter = 0;
		lookphase = 2;
	}
}
if (phase == 3) {
	counter++;
	if (counter >= 900) {
		instance_create_layer(190, 150, "Instances_1", Obj_FlashButton);
		counter = 0;
	}
}
if (phase == 4 && lookphase > 0) {
	counter++;
	if (counter >= 900) {
		lookphase--;
		counter = 0;
	}
}


if (ephase == 2) {
if (instance_exists(inst_6C7B7710)){
instance_destroy(inst_6C7B7710);
}
if (layer_exists("WILLBEDESTROYED")) {
layer_destroy("WILLBEDESTROYED");
}
lookphase = 1;
ephase = 2.5;
}

if (ephase == 3) {
lookphase = 3;
ephase = 3.5;
}

if (locPoints[lookphase][0] != camera_get_view_x(view_camera[0]) + 120) { camera_set_view_pos(view_camera[0],  camera_get_view_x(view_camera[0]) + (locPoints[lookphase][0] > camera_get_view_x(view_camera[0]) + 120 ? 1 : -1), camera_get_view_y(view_camera[0])); }
if (locPoints[lookphase][1] != camera_get_view_y(view_camera[0]) + 213) { camera_set_view_pos(view_camera[0],  camera_get_view_x(view_camera[0]), camera_get_view_y(view_camera[0]) + (locPoints[lookphase][1] > camera_get_view_y(view_camera[0]) + 213 ? 1 : -1)); }

if (camera_get_view_x(view_camera[0]) < 0) { camera_set_view_pos(view_camera[0], 0, camera_get_view_y(view_camera[0])); } else if (camera_get_view_x(view_camera[0]) > room_width - 426) { camera_set_view_pos(view_camera[0], room_width - 426, camera_get_view_y(view_camera[0])); }
if (camera_get_view_y(view_camera[0]) < 0) { camera_set_view_pos(view_camera[0], camera_get_view_x(view_camera[0]), 0); } else if (camera_get_view_y(view_camera[0]) > room_height - 240) { camera_set_view_pos(view_camera[0], camera_get_view_x(view_camera[0]), room_height - 240); }

if (x == targX && y == targY) {
targX = camera_get_view_x(view_camera[0]) + 213 + int64(random_range(-193, 193));
targY = camera_get_view_y(view_camera[0]) + 120 + int64(random_range(-100, 100));
}
if (x != targX) { x += (x < targX) ? 1 : -1; }
if (y != targY) { y += (y < targY) ? 1 : -1; }

attackTimer++;