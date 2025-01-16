/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();
starty = y
yspeed = -4
grav = 0.125
onscreen = false
max_fallspeed = 2.5

xspeed = 0;

if instance_exists(Obj_Thumper) {
if instance_nearest(x,y,Obj_Thumper).x > x then xspeed = -0.8
if instance_nearest(x,y,Obj_Thumper).x < x then xspeed = 0.8 

if instance_nearest(x,y,Obj_Thumper).high = true {
	yspeed = -4.9
	}
}

if instance_exists(BossParentObject) {
if BossParentObject.phase = 2 then yspeed = -3
if y >room_height-8 then yspeed = -5.3
}