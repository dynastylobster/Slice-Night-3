/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
if belongsToWhizyard 
	{	
	if instance_exists(Obj_Whizyard)
	{
		instance_nearest(x,y,Obj_Whizyard).hp -= 0.5
	}	
}
event_inherited();