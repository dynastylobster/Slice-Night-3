/// @description Insert description here
// You can write your code in this editor
	homeguy = noone;
if instance_exists(Obj_SheildShooter) {
		homeguy = instance_nearest(x,y,Obj_SheildShooter)
	}
if homeguy != noone {
		dir = homeguy.dir 
	}
	
xspeed = 1.5
age = 0;
starty = y
yspeed = 0
/*
if instance_exists(Obj_Billy) {

		if Obj_Billy.y > y then yspeed = 0.5
		if Obj_Billy.y < y then yspeed = -0.5
}
*/