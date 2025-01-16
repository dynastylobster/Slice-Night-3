/// @description Insert description here
// You can write your code in this editor
//
active = false
if instance_exists(Obj_Billy) {
	Obj_Billy.x = other.x
	Obj_Billy.y = other.y
}
instance_destroy();
direction = point_direction(x,y,Obj_GoalBox.x,Obj_GoalBox.y) {
speed = 6.25	
}
image_alpha = 0