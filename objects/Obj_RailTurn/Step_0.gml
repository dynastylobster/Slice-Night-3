/// @description Insert description here
// You can write your code in this editor
if instance_exists(Obj_Train) {
		if place_meeting(x,y-4,Obj_Train) {
		instance_nearest(x+16,y,Obj_Train).image_xscale = image_xscale
		instance_nearest(x+16,y,Obj_Train).facing = image_xscale
		instance_nearest(x+16,y,Obj_Train).xspeed += 0.0125*(instance_nearest(x+16,y,Obj_Train).facing)
		}
		
	}