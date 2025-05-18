/// @description Insert description here
// You can write your code in this editor
startx = x
starty = y
age = 0;

color = (#FFFFFF);

if instance_exists(Obj_BgBlackHole) {
		distance_x = distance_to_point(Obj_BgBlackHole.x,y);
		distance_y = distance_to_point(x,Obj_BgBlackHole.y);
	}