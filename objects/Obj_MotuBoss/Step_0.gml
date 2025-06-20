/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();
if !lockedout {
age++
} else {
age = 0;
text = ""	
}

if instance_exists(Obj_SliceParent) and !lockedout {
	if distance_to_object(Obj_SliceParent) < 48 {
		spareable = false;
		guarddown = false;
		text = ""
		if !lockedout and instance_number(Obj_MotuBoss) < 2 {
		with(instance_create_layer(x,y,layer,Obj_MotuBoss)) {
		spareable = false 
		guarddown = false
		alarm[0] = 20
		lockedout = true;	
		}
		instance_destroy();
	}

	}
}

if instance_exists(Obj_Billy) {
		if distance_to_object(Obj_Billy) < 120 and age < 300 {
			text = "WAIT!!"
		}
	}

if age > 300 and age < 450{
	guarddown = true;
	alarm[0] ++
	x-= 1
	text = "You're not going to fight?"
	}
if age > 450 and age < 500{
	x-= 1;
	text = "... You changed your mind?"	
}
if age > 545 {
	text = "I know it can be hard.."	
}
if age > 690 {
	text = "to face your own feelings."
}

if age > 740 and age < 900 {
x -= 0.5
 text = "and I can tell your'e not quite ready yet..."	
}

if age > 900 {
		text = "But we can cross that bridge when we get to it, right?"
	}
if age > 990 {
		sprite_index = Spr_PMotuIdle
		if place_meeting(x,y,Obj_Billy) {
			ini_open("save.ini")
			global.music = Snd_Silence
			audio_stop_all();
			audio_play_sound(Sng_MotuPartyJoin,0,0,global.musicvolume);
			ini_write_real(global.save,"moturoute",true)
			ini_close()
			alarm[5] = 300
			mask_index = Spr_Empty
		}
	}

if !guarddown {

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
	
if place_meeting(x,y+3,[Obj_Wall, autoTileCol]) {
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
		if !place_meeting(x,y+abs(yspeed)+2,[Obj_Wall, autoTileCol]) {
		yspeed += grav
		}
	}

	if state!= "slicing" {
	if place_meeting(x-5,y,[Obj_Wall, autoTileCol]) {
		xspeed = 5
	}
	
		if place_meeting(x+5,y,[Obj_Wall, autoTileCol]) {
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
if place_meeting(x,y+7,[Obj_Wall, autoTileCol])	
	{
		audio_play_sound(Snd_BlockBreak,0,0,global.SFXvolume*2)
		audio_play_sound(Snd_Land,0,0);
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
if place_meeting(x,y+14,[Obj_Wall, autoTileCol]) y-= 1

if !place_meeting(x,y+24,[Obj_Wall, autoTileCol]) {
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
		if place_meeting(x,y+5,[Obj_Wall, autoTileCol]) or place_meeting(x,y+5,Obj_Billy)
		{
		audio_play_sound(Snd_Jump,0,0,global.SFXvolume,0,0.8)
		audio_play_sound(Snd_Land,0,0);
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
if distance_to_object(Obj_Billy) < 12 and y >= Obj_Billy.y-4 and place_meeting(x,y+24,[Obj_Wall, autoTileCol]){
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
	
while place_meeting(x,y+0.25,[Obj_Wall, autoTileCol]) {
	y-= 0.25
}

image_speed = !global.paused;
}

