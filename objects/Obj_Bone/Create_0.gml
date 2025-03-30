/// @description Insert description here
// You can write your code in this editor
onscreen = false;
CheckOnscreen()

if instance_exists(Obj_Billy) {
		direction = point_direction(x,y,Obj_Billy.x,Obj_Billy.y)
	}
if !onscreen direction = 270