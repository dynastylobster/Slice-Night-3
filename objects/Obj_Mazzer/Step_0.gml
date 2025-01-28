// Inherit the parent event
event_inherited();

if (!global.paused) {

if (!stationary) {
var nearx = true;
var neary = true;
if (x + 1.5 < targX || x - 1.5 > targX) {
nearx = false;
}
if (y + 1.5 < targY || y - 1.5 > targY) {
neary = false;
}

if (nearx && neary) {
if (follows && instance_exists(Obj_Billy)) {
if (!vert) {
targY = Obj_Billy.y;
} else {
targX = Obj_Billy.x;
}
} else if (!stationary) {
if (!vert) {
if (y >= homeY) { targY = homeY - 100; } else { targY = homeY + 100; }
} else {
if (x >= homeX) { targX = homeX - 100; } else { targX = homeX + 100; }
}
}
}

if (!vert) {
if (!neary) { y += (y < targY) ? 1 : -1; }
} else {
if (!nearx) { x += (x < targX) ? 1 : -1; }
}
}

if (constant || lasering) {
var xbon = x;
var ybon = y;
if (dir == "Up") { ybon -= 1000; } if ( dir == "Down" ) { ybon += 1000; }
if (dir == "Left") { xbon -= 1000; } if ( dir == "Right" ) { xbon += 1000; }

var exbo = 0;
var eybo = 0;

var close = ds_list_create();
collision_line_list(x + exbo, y + eybo, xbon + exbo, ybon + eybo, [Obj_Wall, Obj_EnemyOnlyBlock], true, true, close, true);
var obj = close[| 0];
if (instance_exists(obj)) {
if (vert) { ybon = obj.y + (obj.sprite_height / 2); } else { xbon = obj.x + (obj.sprite_width / 2); }
}

var ll = collision_line(x + 3, y + 3, xbon, ybon, Obj_Billy, false, true);
var rl = collision_line(x - 3, y - 3, xbon, ybon, Obj_Billy, false, true);
if (ll && rl) {
HitPlayer();
}
}

if (attackTimer > 30 * phaseSpeed) {
lasering = !lasering;
attackTimer = 0;
}

attackTimer++;
age++;
}