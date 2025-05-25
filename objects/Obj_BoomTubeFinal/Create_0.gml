/// @description Insert description here
// You can write your code in this editor
event_inherited();
onscreen = false;
alarm[0] = 120
alarm[1] = 240
age = 0
xshift = 0 
grav = 0.125
yspeed = 0
max_fallspeed = 5

if floating jumps = false 

sprite_index = Spr_BoomTubeFinal
if global.costume = "Billy (SMW)" {
		sprite_index = Spr_BoomTubeSMW
	}
if floating grav = 0