/// @description Insert description here
// You can write your code in this editor
event_inherited();
block = instance_create_depth(x,y,depth+25,Obj_blinkBlock)
if on block.image_index = 0
if !on block.image_index = 2
	
if block = -4 instance_destroy();
event_user(0)