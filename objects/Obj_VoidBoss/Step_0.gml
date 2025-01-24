// Inherit the parent event
event_inherited();

y = camera_get_view_y(view_camera[0]) + 75;

/*
Phase 1: Tears.
Phase 2: Knives.
Phase 3: Tears and knives.
Phase 4: Laser.
*/

if (phase > ephase) {
ephase = phase;
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

if (ephase == 1) {
if (instance_exists(inst_6C7B7710)){
instance_destroy(inst_6C7B7710);
}
ephase = 1.5;
}

if (ephase == 2) {
if (instance_exists(inst_4369BF1B)){
instance_destroy(inst_4369BF1B);
}
ephase = 2.5;
}

var camx = camera_get_view_x(view_camera[0]);
var camy = camera_get_view_y(view_camera[0]);
var vcamx = camx + 120;
var vcamy = camy + 213;

if (locPoints[phase][0] != camera_get_view_x(view_camera[0]) + 120) { camera_set_view_pos(view_camera[0],  camera_get_view_x(view_camera[0]) + (locPoints[phase][0] > camera_get_view_x(view_camera[0]) + 120 ? 1 : -1), camera_get_view_y(view_camera[0])); }
if (locPoints[phase][1] != camera_get_view_y(view_camera[0]) + 213) { camera_set_view_pos(view_camera[0],  camera_get_view_x(view_camera[0]), camera_get_view_y(view_camera[0]) + (locPoints[phase][1] > camera_get_view_y(view_camera[0]) + 213 ? 1 : -1)); }

if (camera_get_view_x(view_camera[0]) < 0) { camera_set_view_pos(view_camera[0], 0, camera_get_view_y(view_camera[0])); } else if (camera_get_view_x(view_camera[0]) > room_width) { camera_set_view_pos(view_camera[0], room_width, camera_get_view_y(view_camera[0])); }
if (camera_get_view_y(view_camera[0]) < 0) { camera_set_view_pos(view_camera[0], camera_get_view_x(view_camera[0]), 0); } else if (camera_get_view_y(view_camera[0]) > room_height - 240) { camera_set_view_pos(view_camera[0], camera_get_view_x(view_camera[0]), room_height - 240); }


attackTimer++;