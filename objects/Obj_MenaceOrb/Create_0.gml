/// @description Insert description here
// You can write your code in this editor
event_inherited();
hp = 2
if belongsToWhizyard 
{	
	alarm[0] = 8;
	sprite_index = Spr_MenaceOrbW
	hp = 1;
}
yspeed = 0
grav = 0.125
jumpspeed = 3
whizyardDeathTimer = 0;


grav = grav *sign (image_yscale)