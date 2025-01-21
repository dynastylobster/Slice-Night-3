/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();
if !global.paused {
if place_meeting(x+(xspeed*2),y,[Obj_Wall, Obj_EnemyOnlyBlock, autoTileCol]) {
xspeed *= -1	
}
x+= xspeed
} else {
if alarm[0] > 0 alarm[0]++	
}

if object_index != Obj_BladeBuggy {
if !place_meeting(x,y+2,[Obj_Wall, Obj_EnemyOnlyBlock, autoTileCol]) {
		sprite_index = Spr_PokeTankAir;
	} else {
		sprite_index = Spr_PokeTank;	
	}
}