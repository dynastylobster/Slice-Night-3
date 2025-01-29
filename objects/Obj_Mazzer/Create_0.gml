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

targX = x;
targY = y;
homeX = x;
homeY = y;

lasering = false;
if (oppositePhase) {
lasering = true;
}
attackTimer = 0;
age = 0;