/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();

age += 0.125;

x = startx + sin(age/2)*5

if !global.paused and image_index > 2 {
	if !place_meeting(x,y,Obj_Bone) {
		
		if instance_exists(Obj_Bone) {
		if distance_to_object(Obj_Bone) > 12
		{
		instance_create_depth(x,y,depth,Obj_Bone)
		}
	} else {
		instance_create_depth(x,y,depth,Obj_Bone)
	}
}
}
if instance_exists(Obj_Billy) {
	if Obj_Billy.x < x image_xscale = 1	
	if Obj_Billy.x > x image_xscale = -1	
}

image_speed = !global.paused