/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
xspeed = 3;

if instance_exists(Obj_Billy) {
	if Obj_Billy.x < x then xspeed *= -1
}
image_xscale = sign(xspeed)