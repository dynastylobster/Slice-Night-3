// Inherit the parent event
event_inherited();

vert = false;
if (dir == "Up" || dir == "Down") {
vert = true;
}
if (dir == "Up") { image_angle = 0; }
if (dir == "Down") { image_angle = 180; }
if (dir == "Left") { image_angle = 90; }
if (dir == "Right") { image_angle = 270; }

stationary = false;
follows = false;
moving = false;
movingUB = false;

if (type == "Stationary") { stationary = true; }
if (type == "Following") { follows = true; }
if (type == "Moving") { moving = true; }
if (type == "Moving (Unbounded)") { movingUB = true; }

targX = x;
targY = y;
homeX = x;
homeY = y;

if (movingUB) {
if (!vert) {
targY = 10000
} else {
targX = 10000;
}
}

lasering = false;
if (oppositePhase) {
lasering = true;
}

close = ds_list_create();

attackTimer = 0;
age = 0;