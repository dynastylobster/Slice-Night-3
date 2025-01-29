// Inherit the parent event
event_inherited();

if (!global.paused) {

if (!stationary) {
var nearx = true;
var neary = true;

if (x + mspeed < targX || x - mspeed > targX) {
nearx = false;
}
if (y + mspeed < targY || y - mspeed > targY) {
neary = false;
}

if (place_meeting(x + 8, y, [autoTileCol, Obj_Wall, Obj_EnemyOnlyBlock])) {
x -= mspeed;
if (movingUB) { targX -= 10000; } else { nearx = true; }
}
if (place_meeting(x - 8, y, [autoTileCol, Obj_Wall, Obj_EnemyOnlyBlock])) {
x += mspeed;
if (movingUB) { targX += 10000; } else { nearx = true; }
}
if (place_meeting(x, y + 8, [autoTileCol, Obj_Wall, Obj_EnemyOnlyBlock])) {
y -= mspeed;
if (movingUB) { targY -= 10000; } else { neary = true; }
}
if (place_meeting(x, y - 8, [autoTileCol, Obj_Wall, Obj_EnemyOnlyBlock])) {
y += mspeed;
if (movingUB) { targY += 10000; } else { neary = true; }
}

if ((nearx && neary) || follows) {
if (follows && instance_exists(Obj_Billy)) {
if (!vert) {
targY = Obj_Billy.y;
} else {
targX = Obj_Billy.x;
}
} else if (moving) {
if (!vert) {
if (y >= homeY) { targY = homeY - 100; } else { targY = homeY + 100; }
} else {
if (x >= homeX) { targX = homeX - 100; } else { targX = homeX + 100; }
}
} 
}

if (!vert) {
if (!neary) { y += (y < targY) ? mspeed : mspeed * -1; }
} else {
if (!nearx) { x += (x < targX) ? mspeed : mspeed * -1; }
}
}

if (constant || lasering && age % 2 == 0) {
	
for (var i = 0; i < 6; i++) {
var truex = x - 0.5;
var truey = y - 0.5;
var xbon = truex;
var ybon = truey;
if (dir == "Up") { ybon -= 1000; } if ( dir == "Down" ) { ybon += 1000; }
if (dir == "Left") { xbon -= 1000; } if ( dir == "Right" ) { xbon += 1000; }

var exbo = 0;
var eybo = 0;
if (vert) { exbo = ((2) - i); } else { eybo = ((2) - i); }

collision_line_list(x + exbo, y + eybo, xbon + 0.5 + exbo, ybon + 0.5 + eybo, [Obj_Billy, Obj_MetalBlock, Obj_MetalBlockLong, Obj_Wall, Obj_EnemyOnlyBlock], true, true, close, true);
var obj = close[| 0];

if (obj.object_index == Obj_Billy || obj.object_index == Obj_MetalBlock || obj.object_index == Obj_MetalBlockLong) {
obj.heat += obj.maxHeat / 60;
}

if (obj.object_index != Obj_Billy) {
if (vert) { ybon = obj.y + (obj.sprite_height / 2); } else { xbon = obj.x + (obj.sprite_width / 2); }
}

ds_list_clear(close);
}

}

if (attackTimer > 30 * phaseSpeed) {
lasering = !lasering;
attackTimer = 0;
}

attackTimer++;
age++;
}