/// @description Insert description here
// You can write your code in this editor
if place_meeting(x,y-4,Obj_Billy) {
	Obj_Billy.x += x-xprevious
	Obj_Billy.y += y-yprevious
	}
if instance_place(x,y-8,Obj_FlatBooferSpikes) and instance_place(x,y-9,Obj_FlatBooferSpikes) {
	instance_place(x,y-8,Obj_FlatBooferSpikes).y = y-30
	instance_place(x,y-9,Obj_FlatBooferSpikes).y = y-30
	}