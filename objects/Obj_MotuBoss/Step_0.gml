/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();

if instance_exists(Obj_Billy) {
	if state != "slicing" {
		if Obj_Billy.x > x then image_xscale = 1
		if Obj_Billy.x <= x then image_xscale = -1
		} else {
			if Obj_Billy.x > x then image_xscale = -1
		if Obj_Billy.x <= x then image_xscale = 1
		}
	}

if state = "running" sprite_index = Spr_MotuBoss_Run
if state = "jumping" sprite_index = Spr_MotuBoss_Jump
if state = "drop winding" sprite_index = Spr_MotuBoss_DropWindup
if state = "dropping"sprite_index = Spr_MotuBoss_Dropdown
if state = "slicing" sprite_index = Spr_MotuSliceBoss;


if !global.paused and active {
	
if place_meeting(x,y+3,Obj_Wall) {
if state != "drop winding"	{
		if yspeed > 0 yspeed = 0;
	}
}
	
age += 0.25;
if state!= "slicing" {
if iframes then image_alpha = sin(age*3)+0.25 
	} else if iframes image_alpha = 1;
if !iframes then image_alpha = 1;

if iframe_timer >= 118 {
alarm[1] = 5;	
}
	
if iframes then iframe_timer ++
if iframe_timer >= 120 {
iframes = false	
iframe_timer = 0;
}
	
x+= xspeed
y+= yspeed

if state = "slicing" {
if image_index >= 2 and image_index <= 2.8 {
	if !audio_is_playing(Snd_Slice) 
	{	
		audio_play_sound(Snd_Slice,0,0)
		audio_play_sound(Snd_Slice,0,0,global.SFXvolume,0,0.8);
		}
	}

if image_index >= 3.4 then state = "jumping"	
}

if state != "slicing" and state != "drop winding" and state != "dropping" {
	if instance_exists(Obj_Billy) {
		if Obj_Billy.x > x and xspeed < 2 then xspeed += accel
		if Obj_Billy.x < x and xspeed > -2 then xspeed -= accel
		}
	} else xspeed = 0;
	
if state!= "drop winding" {
		if !place_meeting(x,y+abs(yspeed)+2,Obj_Wall) {
		yspeed += grav
		}
	}

	if state!= "slicing" {
	if place_meeting(x-5,y,Obj_Wall) {
		xspeed = 5
	}
	
		if place_meeting(x+5,y,Obj_Wall) {
		xspeed = -5
	}
	}

if state = "drop winding"
{
yspeed = 0
if !audio_is_playing(Snd_Booster) {
alarm[2] = 30
audio_play_sound(Snd_Booster,0,0);
}
}

if state = "dropping" {
if place_meeting(x,y+7,Obj_Wall)	
	{
		audio_play_sound(Snd_BlockBreak,0,0,global.SFXvolume*2)
		audio_play_sound(Snd_land,0,0);
			instance_create_layer(x,y,layer,Obj_SliceBlockParticle);
			instance_create_layer(x,y,layer,Obj_SliceBlockParticle);
			instance_create_layer(x,y,layer,Obj_SliceBlockParticle);
	instance_create_layer(x-8,y+8,layer,Obj_MotuBossFireBall);
	instance_create_layer(x+8,y+8,layer,Obj_MotuBossFireBall);
	yspeed = 0;
	xspeed = 0;
	state = "running"
	}
	
}

if state = "slicing"
{
	yspeed = 0;
if place_meeting(x,y+14,Obj_Wall) y-= 1

if !place_meeting(x,y+24,Obj_Wall) {
		if !audio_is_playing(Snd_Booster) {
	state = "drop winding"
	image_index = 0;
	}
}


}

if state != "dropping" {
	if yspeed > 7 yspeed = 7;
	}

if state = "jumping" {
		alarm[1]-=3
		if place_meeting(x,y+5,Obj_Wall) or place_meeting(x,y+5,Obj_Billy)
		{
		audio_play_sound(Snd_jump,0,0,global.SFXvolume,0,0.8)
		audio_play_sound(Snd_land,0,0);
		yspeed = -jumpspeed
		}
	}
	
if y <= 95 {	
	if !audio_is_playing(Snd_Booster) {
	state = "drop winding"
	image_index = 0;
	}
}
if instance_exists(Obj_Billy) {
if distance_to_object(Obj_Billy) < 12 and y >= Obj_Billy.y-4 and place_meeting(x,y+24,Obj_Wall){
	if state != "dropping" {
		image_index = 0;
		state = "slicing"
		}
	}
}


}

if global.paused {
		if active alarm[1]++
	}
	
while place_meeting(x,y+0.25,Obj_Wall) {
	y-= 0.25
}

image_speed = !global.paused;