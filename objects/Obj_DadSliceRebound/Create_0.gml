/// @description Insert description here
// You can write your code in this editor
yspeed = -3
grav = 0.125
xspeed = 2
if instance_exists(Obj_Billy) {
if Obj_Billy.x < x xspeed*= -1
}
alarm[0] = 120

image_xscale = sign(xspeed)