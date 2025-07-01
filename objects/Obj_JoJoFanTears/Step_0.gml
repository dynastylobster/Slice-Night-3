/// @description Insert description here
// You can write your code in this editor
event_inherited();
if place_meeting(x,y,Obj_Billy) {
HitPlayer();	
}

if place_meeting(x,y,[autoTileCol,Obj_Wall,Obj_Slope]) {
instance_destroy();
}

y+= 4