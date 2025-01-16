/// @description Insert description here
// You can write your code in this editor
/*if place_meeting(x,y-4,Obj_Billy) {
	Obj_Billy.x += x-xprevious
	Obj_Billy.y += y-yprevious
	}*/
if place_meeting(x,y+4,Obj_Billy) {
	Obj_Billy.y += 2
	}
if instance_exists(homeboofer) {
	x = homeboofer.x
	y = homeboofer.y
	}