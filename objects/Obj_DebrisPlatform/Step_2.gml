/// @description Insert description here
// You can write your code in this editor

if place_meeting(x,y-4,Obj_Billy) {
	if Obj_Billy.yspeed >= 0 {
	Obj_Billy.x += x-xprevious
	Obj_Billy.y += y-yprevious
	}
	}
//if place_meeting(x,y-0.5,Obj_Billy)
//{
//	Obj_Billy.y -= 0.25
//}