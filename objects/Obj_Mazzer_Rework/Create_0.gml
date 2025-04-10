// Inherit the parent event
event_inherited();
onscreen = false;

vert = false;
if (dir == "Up" || dir == "Down") {
vert = true;
}

xbon = 0;
ybon = 0;

if (dir == "Up") { image_angle = 0; ybon = -10000; }
if (dir == "Down") { image_angle = 180; ybon = 10000; }
if (dir == "Left") { image_angle = 90; xbon = -10000; }
if (dir == "Right") { image_angle = 270; xbon = 10000; }

spin = 1;
opin = 1;

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

attackTimer = 0;

targobj = [Obj_Billy, Obj_Wall, Obj_EnemyOnlyBlock, Obj_MetalBlock];

list = ds_list_create();
nearest = noone;
xbonA = [];
ybonA = [];

age = 0;