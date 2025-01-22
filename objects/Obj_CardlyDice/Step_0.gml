/// @description Insert description here
// You can write your code in this editor

if !global.paused {
yspeed += grav 
y+=yspeed 
if place_meeting(x,y+1,[Obj_Wall,autoTileCol]) {
	yspeed = -4;	
}
x+= xspeed
}