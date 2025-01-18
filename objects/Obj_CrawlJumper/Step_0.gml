/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();
CheckOnscreen();
if global.paused or !jumping {
alarm[0]++	
}

timer = (alarm[0]-180)*-1

if !global.paused {

	
while place_meeting(x,y+0.25,[Obj_Wall, Obj_EnemyOnlyBlock, autoTileCol]) {
yspeed = -1
y-= 0.5
}

if place_meeting(x,y+2,[Obj_Wall, Obj_EnemyOnlyBlock, autoTileCol]) {
x+= dir * 1
} else {
	x+= dir*2
	}
if dir != 0 {
if place_meeting(x+4,y,[Obj_Wall, Obj_EnemyOnlyBlock, autoTileCol]) {
dir = -1	
}

if place_meeting(x-4,y,[Obj_Wall, Obj_EnemyOnlyBlock, autoTileCol]) {
dir = 1	
}
}

y+= yspeed
yspeed += grav
	
}