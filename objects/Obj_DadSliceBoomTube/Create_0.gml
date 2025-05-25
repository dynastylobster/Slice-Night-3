/// @description Insert description here
// You can write your code in this editor
yspeed = -3
grav = 0.125
xspeed = 2
if instance_exists(Obj_Billy) {
if Obj_Billy.x < x xspeed*= -1
direction = point_direction(x,y,Obj_Billy.x,Obj_Billy.y)
}
alarm[0] = 120

image_xscale = sign(xspeed)