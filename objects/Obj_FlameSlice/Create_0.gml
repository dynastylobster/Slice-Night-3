/// @description Insert description here
// You can write your code in this editor
if global.costume = "Billy (SMW)" {instance_destroy();}
dir = 0;
angle = 0;
if instance_exists(Obj_Billy) {
		if Obj_Billy.image_xscale < 0 then dir = -1;
		if Obj_Billy.image_xscale > 0 then dir = 1;
	}
	xspeed = 4
	yspeed = 0;

image_xscale = dir

damage = true
done_slicing = false

alarm[1] = 120;
image_alpha = 0.5

if global.character = "Robot" {
		xspeed = 2;
		alarm[1] = 30;
	}
	
if global.character = "Coyote" {
		if global.key_up {
		yspeed = -4;	
		}
		if global.key_down {
		yspeed = 4;	
		}
		sprite_index = Spr_FlameSlice_Void
		xspeed = 4.5;
		alarm[1] = 120;
		alarm[3] = 6
		image_alpha = 1
	}
