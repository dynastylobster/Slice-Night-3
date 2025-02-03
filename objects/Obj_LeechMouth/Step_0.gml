if (!instance_exists(owner)) {
instance_destroy();
}

if instance_exists(owner) and !global.paused {
var nearx = true;
var neary = true;
if ((x + 1 < targX || x - 1 > targX)) {
nearx = false;
}
if ((y + 1 < targY || y - 1 > targY)) {
neary = false;
}

if ((nearx || neary) && age % 15 == 0) {
	switch(phase) {
	case 0: // Going Home
	targX = owner.x;
	targY = owner.y;
	break;
	case 1: // Touching Ground
	targX = owner.x + random_range(-50, 50);
	targY = owner.y + owner.hoverHeight + (sprite_height / 2) * 8;
	break;
	}
	phase = !phase;
}

x -= (x - targX) / mspeed;
if (!collision_point(x, y, [Obj_Wall, Obj_EnemyOnlyBlock, Obj_Slope, autoTileCol], false, true)) {
y -= (y - targY) / mspeed;
} else {
if (collision_point(x, y - 3, [Obj_Wall, Obj_EnemyOnlyBlock, Obj_Slope, autoTileCol], false, true)) {
y--;
} else {
targY = y;
}
}

age++;
}