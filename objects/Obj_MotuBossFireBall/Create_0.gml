/// @description Insert description here
// You can write your code in this editor
room_speed = 30
alarm[0] = 3
alarm[1] = 5;
yspeed = -4;
xspeed = 0;
grav = 0.125;
if instance_exists(BossParentObject) {
if BossParentObject.x > x then xspeed = 1
if BossParentObject.x < x then xspeed = -1
image_xscale = xspeed
}

age = 0