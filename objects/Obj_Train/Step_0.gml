/// @description Insert description here
// You can write your code in this editor
if !global.paused and active {

	age += (abs(xspeed))*0.125
	
/*
if !place_meeting(x,y,Obj_BillyShipBullet) and image_speed = 0
{
	if global.key_Z_pressed {
	if instance_number(Obj_BillyShipBullet) <= 3 {
		instance_create_layer(x,y,layer,Obj_BillyShipBullet);
		}
	}
}*/

if place_meeting(x+xspeed*2,y+4,[Obj_Wall, autoTileCol]) {
	if instance_exists(Obj_TrainBossController) {
		instance_destroy();	
	}
	
		instance_create_layer(x,y,layer,Obj_EnemyHurtEffect)
		
		repeat(5) {
		instance_create_layer(x,y,layer,Obj_SliceBlockParticle)
		}
		Obj_SliceBlockParticle.sprite_index = Spr_SliceBlockRedParticle
		
		audio_play_sound(Snd_BlockBreak,0,0);
		audio_play_sound(Snd_EnemyExplode,0,0,global.SFXvolume*1.25);
		
		if instance_exists(Obj_Billy) {
		Obj_Billy.x -= xspeed*3
		Obj_Billy.grav = 0.225
		Obj_Billy.image_alpha = 1;
		Obj_Billy.mask_index = Spr_BillyIdle
		Obj_Billy.max_walkspeed = 1.5
		Obj_Billy.max_runspeed = 2.3 
		}
		event_user(0)

	}

	if !place_meeting(x,y,Obj_Rail) {
		yspeed += grav
	} else {
			yspeed = 0
		}
		
	if place_meeting(x,y+3,Obj_Rail) {
				if global.key_Z_pressed
			{
				audio_play_sound(Snd_Jump,0,0,global.SFXvolume,0,0.75)
				yspeed = -5; y-= 6
				}	
	}
	y += yspeed

if !instance_exists(Obj_TrainBossController) {
	
	if facing = 1 {
		if xspeed < max_xspeed then xspeed += 0.0125
		if xspeed > max_xspeed xspeed -= 0.125
		}
		if facing = -1 {
		if abs(xspeed) < max_xspeed then xspeed -= 0.0125
		if abs(xspeed) > max_xspeed xspeed += 0.125
		}
	
	if place_meeting(x,y+6,Obj_RailSlope) {
			if instance_nearest(x,y,Obj_RailSlope).image_index = 0 then xspeed += 0.0225
			if instance_nearest(x,y,Obj_RailSlope).image_index = 1 then xspeed -= 0.0225
		}
} else {
		if global.key_right {
				if xspeed < max_xspeed then xspeed += 0.125
			}
		if global.key_left { 
				if abs(xspeed) < max_xspeed then xspeed -= 0.125
			}
	}
	x+= xspeed
	
	
	while place_meeting(x,y+1,Obj_RailSlope) {
			if yspeed >= 0 
				{
				y-= 0.125
			} else {
				break;	
			}
		}
		
	if place_meeting(x,y+yspeed+2,Obj_Rail) {
	if !audio_is_playing(Snd_TrainLand) {
if yspeed > 0
audio_play_sound(Snd_TrainLand,0,0,global.SFXvolume*3.5,0,random_range(0.95,1.08))

	}	
	}

if place_meeting(x,y+2,Obj_RailTurn) {
		if age %2 > 1 and age %2 < 1.5
		{
		instance_create_layer(x-(xspeed*4),y+8,layer,Obj_EnemyFlameSpark);
		audio_play_sound(Snd_BlockBreak,0,0,global.SFXvolume/6);
		}
		if !audio_is_playing(Snd_TrainScratch) {
			audio_play_sound(Snd_TrainScratch,0,0,global.SFXvolume);	
		}
	}


}



if active and instance_exists(Obj_Billy) {
if Obj_Billy.i_frames and !Obj_Billy.dead {
	image_alpha = sin(Obj_Billy.age)
	} else image_alpha = 1;
}

if instance_exists(Obj_TrainBossController) {
	x = clamp(x,0,400)
	if x > 398 xspeed = clamp(xspeed,-7,0)
	age += 0.25;
		image_speed = 1;
	}