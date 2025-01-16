/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();

if hit then sprite_index = Spr_ThumpScreenBossHit
if !active then alarm[1] ++

if global.paused {
if alarm[0] > 0 then alarm[0]++	
}
if global.paused or hp = 6 or hp = 4 or hp = 2 {
	if alarm[1] > 0 then alarm[1]++	
}

if hp <= 6 
{
phase = 2;	
}

if phase = 2 {
y = starty + 16
}

if !hit {
if alarm[1] <= 45{ sprite_index = Spr_ThumpScreenBossWarn} 
else {
	sprite_index = Spr_ThumpScreenBoss
}
}