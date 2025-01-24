if (counter >= rand) {
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

if (horTB > 0) {
left = true;
} else {
right = true;
}

if (verTB > 0) {
up = true;
} else {
down = true;
}

if (abs(horTB) > abs(verTB) * 1.2) { up = false; down = false; }
if (abs(verTB) > abs(horTB) * 1.2) { left = false; right = false; }

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