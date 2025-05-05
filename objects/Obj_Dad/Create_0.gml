/// @description Insert description here
// You can write your code in this editor
sprite_index = Spr_Dad_Idle
mask_index = Spr_Dad_Hitbox
//phase
//0 = slicing, 1 = raising ax
phase = 0
raisetimer = 0;
alarm[0] = 90
fadein = 60;
randomize();
fadingin = false;
slicing_xspeed = 0
alarm[2] = 400;
hp = 36;
maxhp = hp
hpy = 7
hpx = 270;
hit = false;
downhit = false;
tppoint = noone;
starty = y;

hitcount = 0;
goingup = false;