/// @description Insert description here
// You can write your code in this editor
if !instance_exists(Obj_EvilTrainBoss) {
	if state = 0 
	{
		alarm[0] = 60
		state = 1;
	}
	
	}
	
	if state = 2
	{
	sprite_index = Spr_model1_jump
	y+= yspeed
	yspeed += grav
	x+= xspeed
	if yspeed > 0 image_index = 1;
	if yspeed < 0 image_index = 0;
	}