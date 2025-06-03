/// @description Insert description here
// You can write your code in this editor
if instance_exists(Obj_EnemyFlameTrail) 
{
with (Obj_EnemyFlameTrail) {
image_alpha = 0.25	
}
}
if instance_exists(Obj_EnemyFlameSpark)
{
with (Obj_EnemyFlameSpark) {
image_alpha = 0.5	
}
}


image_speed = !global.paused;

if instance_exists(Obj_Billy) {
		if Obj_Billy.x < x {image_xscale = -1} else image_xscale = 1
	}
	

if !global.paused {
	if fadingin
	{
	if fadein > 0 fadein--
	if fadein = 1 image_index = 0
	if fadein = 1 sprite_index = Spr_Dad_Slicing
	}
	
if phase = 0 {
	
	if sprite_index != Spr_Dad_Idle and sprite_index != Spr_Dad_Slicing {
	image_index = 1;
	sprite_index = Spr_Dad_Idle	
	}
if sprite_index = Spr_Dad_Slicing {
	
	if image_index < 1 and !audio_is_playing(Snd_SliceReverse) {
		audio_play_sound(Snd_SliceReverse,0,0,global.SFXvolume,0,0.9)	
	}
	
	if image_index >= 2 and image_index < 2.25 {
	audio_play_sound(Snd_GhostChomp,0,0,global.SFXvolume*2);	
	}
	
		if image_index > 2.25 {
			if !place_meeting(x+image_xscale*48,y,Obj_DadSlice) {
				instance_create_layer(x,y,layer,Obj_DadSlice);	
			}
		if place_meeting(x,y,Obj_Billy) {HitPlayer();}
		}
		
	if image_index < 2 {
		slicing_xspeed += 0.125
		if Obj_Billy.x < x {
			if x < 128 image_index= 1
		
		if x < room_width-48 x+= slicing_xspeed
		}
		if Obj_Billy.x > x {
		if x > room_width-128 image_index= 1
		if x > 48 x-= slicing_xspeed
		}
	}
		
	if image_index > 4.75
	{
		alarm[1] = choose(60,120);
			sprite_index = Spr_Dad_Idle
		}
	}
	
} 

{
if phase = 1 {
	sprite_index = Spr_Dad_Raise;
	raisetimer ++
if raisetimer > 30 image_index = 3
		if image_index >= 3 {
				image_speed = 0
			}
	if image_index = 3 and raisetimer > 30 {
		
		if !instance_exists(Obj_MenaceOrb) {
		instance_create_layer(32,24,layer,Obj_MenaceOrb)	
		instance_create_layer(88,24,layer,Obj_MenaceOrb)	
		instance_create_layer(152,24,layer,Obj_MenaceOrb)	
		instance_create_layer(216,24,layer,Obj_MenaceOrb)	
		instance_create_layer(280,24,layer,Obj_MenaceOrb)	
		instance_create_layer(344,24,layer,Obj_MenaceOrb)
		with(Obj_MenaceOrb) {	
			instance_create_depth(x,y,depth-10,Obj_EnemyHurtEffect)
			alarm[5] = 120
		}
		
		} else {
			sprite_index = Spr_Dad_Slicing;
			phase = 0;	
		}
		phase = 0
		raisetimer = 0;
		}
	}

	}
	
	
	
}


if place_meeting(x,y,Obj_BillyShipBoom) or place_meeting(x,y,Obj_EnemyHurtEffect) {
		image_alpha = 0.75
		if place_meeting(x,y,Obj_SliceParent) {
			image_alpha = 0.5	
		}
	} else image_alpha = 1;


if hp <= 0 {
defeat = true;	
}

if hitcount = 3 {
	goingup = true;
	layer_set_visible(layer_get_id("ScreenShake"),true);
	alarm[4] = 20
		hitcount = 0;
	}

if goingup and !global.paused {
	if y > -0 y-= 4
		y-= 10;	
	}
	if y < -696 {
			image_index = 0;
			layer_set_visible(layer_get_id("ScreenShake"),true);
			alarm[4] = 20
			alarm[1] = 60
			phase = 0
			x = tppoint.x;
			goingup = false
			instance_create_depth(x,196,depth-50,Obj_DadLandCrash)
			repeat(8){
			instance_create_depth(x+random_range(-6,6),196,depth-75,Obj_SliceBlockParticle)
			}
			audio_play_sound(Snd_Slice,0,0,global.SFXvolume*1.25,0,0.5);
			audio_play_sound(Snd_Dink,0,0,global.SFXvolume*2.5,0,0.5)
			audio_play_sound(Snd_BlockBreak,0,0,global.SFXvolume*1.6,0,0.6);
			y = starty;
		}

if defeat {
	instance_create_depth(irandom_range(4,426),0,depth+25,Obj_SliceBlockParticle)
	if !audio_is_playing(Snd_RumbleExplode) {
			audio_play_sound(Snd_RumbleExplode,0,true,global.SFXvolume);
		}
	
	if instance_exists(Obj_SliceBlockParticle) {
	with(Obj_SliceBlockParticle) {
			yspeed = clamp(yspeed,1,99)
			sprite_index = Spr_SliceBlockParticleBlack
		}
		}
	image_speed = 1
	layer_set_visible(layer_get_id("ScreenShake"),true);
	sprite_index = Spr_Dad_Defeat
		global.music = Snd_Silence 
		alarm[1] = 999
		alarm[2] = 999
		alarm[4] = 999
	}