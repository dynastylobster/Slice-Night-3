/// @description Insert description here
// You can write your code in this editor
if instance_exists(Obj_Billy) {
	direction = point_direction(x,y,Obj_Billy.x,Obj_Billy.y)
}
speed += 0.125
if image_index >= 2 image_speed = 0