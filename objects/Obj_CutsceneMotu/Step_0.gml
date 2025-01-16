/// @description Insert description here
// You can write your code in this editor
if !global.paused { 
if jumping {
	image_index = 1
	x+= xspeed
	y+=yspeed
	yspeed += grav
	}
} else if alarm[0] > 0 alarm[0]++