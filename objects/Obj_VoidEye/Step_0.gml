var offscreen = false;
if (realX < camera_get_view_x(view_camera[0]) || realX > camera_get_view_x(view_camera[0]) + 426 || realY < camera_get_view_y(view_camera[0]) || realY > camera_get_view_y(view_camera[0]) + 240) { offscreen = true; } 

if (instance_exists(Obj_VoidBoss)) {
if (Obj_VoidBoss.currentPhase >= 4) {
image_blend = c_black;
}
}

if (counter >= rand || offscreen) {
image_alpha = 1;
if (random_range(0, 10) == 0) {
image_alpha = 0;
}
realX = camera_get_view_x(view_camera[0]) + 213 + random_range(-193, 193);
realY = camera_get_view_y(view_camera[0]) + 120 + random_range(-100, 100);

rand = random_range(60, 240);
counter = 0;
}

if (instance_exists(Obj_Billy)) {
var horTB = realX - Obj_Billy.x;
var verTB = realY - Obj_Billy.y;

var right = false;
var left = false;
var up = false;
var down = false;

if (horTB > 5) {
left = true;
} else if (horTB < -5) {
right = true;
}

if (verTB > 5) {
up = true;
} else if (verTB < -5) {
down = true;
}

if (abs(horTB) >= abs(verTB) * 2) { up = false; down = false; }
if (abs(verTB) >= abs(horTB) * 2) { left = false; right = false; }

if (left && up) { image_index = 0; }
if (up && !left && !right) { image_index = 1;}
if (right && up) { image_index = 2; }
if (left && !up && !down) { image_index = 3; }
if (right && !up && !down) { image_index = 4; }
if (left && down) { image_index = 5; }
if (down && !left && !right) { image_index = 6; }
if (right && down) { image_index = 7; }

}

x = realX + random_range(-1, 1);
y = realY + random_range(-1, 1);
counter++;