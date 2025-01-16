/// @description Insert description here
// You can write your code in this editor
dir = 0;

if instance_exists(Obj_Billy) {
		if Obj_Billy.image_xscale < 0 then dir = -1;
		if Obj_Billy.image_xscale > 0 then dir = 1;
	}
	
image_xscale = dir

damage = true
done_slicing = false

alarm[1] = 120;
image_alpha = 0.5