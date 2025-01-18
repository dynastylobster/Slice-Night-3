/// @description Insert description here
// You can write your code in this editor
if !global.paused {
	yspeed += grav
	x += xspeed
	y+= yspeed
	
	if place_meeting(x,y,[Obj_Wall, autoTileCol]) {
		yspeed = -4;
		}
	
	age++
	
	if age >= 120 {
		instance_create_layer(x,y,layer,Obj_EnemyHurtEffect);
		instance_destroy();
	}

	}