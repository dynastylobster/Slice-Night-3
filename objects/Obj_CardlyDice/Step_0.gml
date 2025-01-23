/// @description Insert description here
// You can write your code in this editor

if !global.paused {
yspeed += grav 
y+=yspeed 
if place_meeting(x,y+1,[Obj_Wall,autoTileCol]) {
	audio_play_sound(Snd_Step,0,0,global.SFXvolume*2.5,0,1.1);
	yspeed = -4;	
}
x+= xspeed
}