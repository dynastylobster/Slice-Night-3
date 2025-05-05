/// @description Insert description here
// You can write your code in this editor
event_inherited();
shiny = irandom_range(1,100)

if instance_exists(Obj_Dad) {
shiny = irandom_range(1,20)	
}

if shiny = 1 {
	sprite_index = Spr_MenaceOrbShiny;	
}
epic = irandom_range(1,1000)
if epic = 1 {
	sprite_index = Spr_MenaceOrbEpic
}
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