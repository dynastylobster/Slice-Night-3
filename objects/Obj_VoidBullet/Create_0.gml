/// @description Insert description here
// You can write your code in this editor
y = camera_get_view_y(view_camera[0]) + irandom_range(-20,-10)
x = irandom_range(camera_get_view_x(view_camera[0]),camera_get_view_x(view_camera[0]) + 413);
if instance_exists(Obj_Billy) {
if homing x = Obj_Billy.x
}

if (instance_exists(Obj_VoidBullet)) {
	var near = instance_nearest(x, y, Obj_VoidBullet);
 if (near.x < x + 20 && near.x > x - 20) {
	 x += random_range(50, 100) * (irandom(1) == 0 ? 1 : -1);
 }
}

grav = random_range(0.0075, 0.002);
yspeed = 0;
max_yspeed = random_range(2, 4);

xspeed = random_range(-0.5, 0.5);
tempboost = false;

spawnedPhase = 0
if (instance_exists(Obj_VoidBoss)) {
spawnedPhase = Obj_VoidBoss.currentPhase;
}