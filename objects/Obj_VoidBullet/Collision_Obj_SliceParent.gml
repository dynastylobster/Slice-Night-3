/// @description Insert description here
// You can write your code in this editor
if other.object_index != Obj_FlameSlice {
		instance_create_depth(x,y,depth,Obj_EnemyHurtEffect);
		instance_destroy();
	} else {
tempboost = true;
var dir = 1;
if (instance_exists(Obj_Billy)) {
dir = x - Obj_Billy.x;
}
if (dir > 0) {
xspeed = abs(xspeed) * 1;
} else {
xspeed = abs(xspeed) * -1;
}
}