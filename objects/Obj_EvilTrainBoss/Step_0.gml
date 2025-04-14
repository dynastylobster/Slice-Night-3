/// @description Insert description here
// You can write your code in this editor

if x < startx {
		x = lerp(x,startx,0.01)
	}
age += 0.125
if instance_exists(Obj_Train) {
truex = x+sin(age/2)*2 - Obj_Train.xspeed*2.25


if y < starty {
		yspeed += grav 
		y+= yspeed
	} else {
	yspeed = 0;
	y = starty	
	
	if global.key_Z_pressed {
			alarm[0] = choose(40,60,90);
		}
	}


}