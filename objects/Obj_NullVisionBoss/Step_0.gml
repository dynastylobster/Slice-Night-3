/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();

if place_meeting(x,y,[Obj_Wall, autoTileCol]) {
touchingwall = true	
} else touchingwall = false;

if !global.paused {
		audio_resume_sound(Sng_BossMusic)
		if !touchingwall {
		y+= dir*1.5
			} else {
				y+= dir*0.6
		}
			

		
	} else {
		alarm[0]++
		alarm[1]++
	if audio_is_playing(Sng_BossMusic) audio_pause_sound(Sng_BossMusic);	
	}
	
if y > room_height
{
	x = random_range(16,413)
	dir = choose(-1,1,-1.5,1.5)
	y = 0
	}

if y < 0 
{
	x = random_range(16,413)
	dir = choose(-1,1,-1.5,1.5)
	y = room_height
}

if hit sprite_index = Spr_NullVisionHurt
if !hit sprite_index = Spr_NullVisionEye
if alarm[1] > 0 and alarm[1] < 30 sprite_index = Spr_NullVisionEyeWarning;	
if touchingwall and !hit sprite_index = Spr_NullVisionClosed;

if !instance_exists(Obj_BillyShip) and instance_exists(Obj_Billy) {
	if hp = 6 {
		alarm[0] = 240
		alarm[1] = 240
		hit = true
		alarm[2] = 120
		
		Obj_Billy.x = 48
		Obj_Billy.y = 175
		
		with(Obj_NullBulletGreen) {instance_destroy();}
		with(Obj_NullBulletRed) {instance_destroy();}
		x = startx
		y = starty
		
		instance_create_depth(Obj_Billy.x,Obj_Billy.y,depth,Obj_HeartPickup);
		instance_create_depth(Obj_Billy.x,Obj_Billy.y,depth,Obj_BillyShip);
		}
	}