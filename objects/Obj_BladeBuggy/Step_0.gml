/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();
if !global.paused {
if place_meeting(x+(xspeed*2),y,[Obj_Wall, autoTileCol]) {
xspeed *= -1	
}
x+= xspeed
}