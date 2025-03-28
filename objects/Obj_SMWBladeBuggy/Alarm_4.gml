/// @description Insert description here
// You can write your code in this editor
instance_create_depth(x+random_range(-5,5),y+12,depth+30,Obj_FlightShooterSpray);
with instance_nearest(x,y,Obj_FlightShooterSpray) {
	image_index = choose(0,1,2,3)
	y-= choose(0,1,2,3)
		image_xscale = 0.5
		image_yscale = 0.5
	}

alarm[4] = 6