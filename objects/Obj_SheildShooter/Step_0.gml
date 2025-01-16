/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();
CheckOnscreen();

if !global.paused {

if sheilding {
		if alarm[1] != -4 then alarm[1] ++
	}

if alarm[0] != -4 {
	
	if alarm[0] < 12 and alarm[0] > 6 {
	image_index = 3
	}
	
	if alarm[0] < 6 {
	image_index = 4
	}
}

if sheilding {
		image_index = 5;
	} else {
		if image_index = 5 image_index = 0
	}

if !sheilding {
		if alarm[1] < 12 image_index = 1;
		if alarm[1] > 12 and alarm[1] < 58 and image_index != 5 and image_index != 4 then image_index = 0
		if alarm[1] > 58 image_index = 2;
	}
	
}

if global.paused {
	if alarm[0] > 0 alarm[0]++
	if alarm[1] > 0 alarm[1]++
	if alarm[2] > 0 alarm[2]++
	if alarm[3] > 0 alarm[3]++
	}
	
image_xscale = dir 

if instance_exists(Obj_Billy) and !dontturn {
		if Obj_Billy.x >= x dir = 1
		if Obj_Billy.x < x dir = -1
	}