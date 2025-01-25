// Inherit the parent event
event_inherited();

//y = camera_get_view_y(view_camera[0]) + 75;

/*
Phase 1: Tears.
Phase 2: Knives.
Phase 3: Tears and knives.
Phase 4: Laser.
*/


if (currentPhase == 1 ||currentPhase == 3 || currentPhase == 5) {
if (attackTimer % 30 == 0) {
// spawn tear attack
}
}

if (currentPhase == 3 || currentPhase == 5) {
if (attackTimer % 75 == 0) {
// spawn knife attack
}
}

if (currentPhase == 5) {
if (attackTimer % 120 == 0) {
lasering = !lasering;
// set hand desired location
}
}

if (lasering) {
// move hands to desired location
// draw laser and damage touching
}

if (cameraMoving == false) {
	switch(currentPhase) {
	case 1:
	counter++;
	if (counter >= 600 && !instance_exists(Obj_FlashButton)) {
		instance_create_layer(190, 414, "Instances_1", Obj_FlashButton);
		counter = 0;
	}
	break;
	case 2:
	if (instance_exists(inst_6C7B7710) ){
	instance_destroy(inst_6C7B7710);
	}
	if (layer_exists("WILLBEDESTROYED")) {
	layer_destroy("WILLBEDESTROYED");
	}
	lookphase = 1;
	break;
	case 3:
	counter++;
	if (counter >= 600 && !instance_exists(Obj_FlashButton)) {
		instance_create_layer(190, 150, "Instances_1", Obj_FlashButton);
		counter = 0;
	}
	if (!cameraMoving) {
	lookphase++;
	if (lookphase > 3) { lookphase = 3; }
	}
	break;
	case 5:
	counter++;
	if (counter >= 60 && lookphase > 0) {
		lookphase--;
		counter = 0;
	}
		if (counter >= 300) {
		instance_create_layer(190, 414, "Instances_1", Obj_FlashButton);
	}
	break;
	}
}


cameraMoving = false;
var xmoving = false;
var ymoving = false;
if (locPoints[lookphase][0] != camera_get_view_x(view_camera[0]) + 120) { xmoving = true; camera_set_view_pos(view_camera[0],  camera_get_view_x(view_camera[0]) + (locPoints[lookphase][0] > camera_get_view_x(view_camera[0]) + 120 ? 1 : -1), camera_get_view_y(view_camera[0])); }
if (locPoints[lookphase][1] != camera_get_view_y(view_camera[0]) + 213) { ymoving = true; camera_set_view_pos(view_camera[0],  camera_get_view_x(view_camera[0]), camera_get_view_y(view_camera[0]) + (locPoints[lookphase][1] > camera_get_view_y(view_camera[0]) + 213 ? 1 : -1)); }

if (camera_get_view_x(view_camera[0]) <= 0) { xmoving = false; camera_set_view_pos(view_camera[0], 0, camera_get_view_y(view_camera[0])); } else if (camera_get_view_x(view_camera[0]) >= room_width - 426) { xmoving = false; camera_set_view_pos(view_camera[0], room_width - 426, camera_get_view_y(view_camera[0])); }
if (camera_get_view_y(view_camera[0]) <= 0) { ymoving = false; camera_set_view_pos(view_camera[0], camera_get_view_x(view_camera[0]), 0); } else if (camera_get_view_y(view_camera[0]) >= room_height - 240) { ymoving = false; camera_set_view_pos(view_camera[0], camera_get_view_x(view_camera[0]), room_height - 240); }

if (xmoving || ymoving) { cameraMoving = true; }

if ((x < targX + 1 && x > targX - 1) && (y < targY + 1 && y > targY - 1)) {
targX = camera_get_view_x(view_camera[0]) + 213 + random_range(-193, 193);
targY = camera_get_view_y(view_camera[0]) + 120 + random_range(-100, 100);
}
if (x > targX + 1 || x < targX - 1) { 
	x -= ((x - targX) * 0.08);
}
if (y > targY + 1 || y < targY - 1) {
	y -= ((y - targY) * 0.08)
}

attackTimer++;