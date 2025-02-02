/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();
CheckOnscreen();

if !global.paused {
		
			y += yspeed
			x += xspeed
		
	if !place_meeting(x,y+abs(yspeed),[Obj_Wall, Obj_EnemyOnlyBlock, autoTileCol]) {
			yspeed += grav 
		}
		
	if place_meeting(x,y+2,[Obj_Wall, Obj_EnemyOnlyBlock, autoTileCol]) {
			xspeed = dir*2
			
			if yspeed > 0 and onscreen{
						audio_play_sound(Snd_Dink,0,0,global.SFXvolume,0,0.8);	
			}
			
			yspeed = -jumpspeed
			dir = choose(-1,1)
		}
		
	}
	
	if place_meeting(x+3,y,[Obj_Wall, Obj_EnemyOnlyBlock, autoTileCol]) {
		xspeed = -2
		dir = -1
	}
	if place_meeting(x-3,y,[Obj_Wall, Obj_EnemyOnlyBlock, autoTileCol]) {
		xspeed = 2
		dir = 1
	}
	
if dir = -1 then image_index = 2;
if dir = 1 then image_index = 1;
