/// @description Insert description here
// You can write your code in this editor
if grav = 0 {
	
if global.paused then alarm[1]++
audio_pause_sound(global.music)
if sprite_index = Spr_AquaJumper_Funny and !audio_is_playing(Snd_FISHFAIL) then audio_play_sound(Snd_FISHFAIL,0,0,1.5)
if alarm[1] < 115 and alarm[1] > 70 then image_index = 1
if alarm[1] <= 70 then image_index = 2
}

if !global.paused {
if y >= starty and yspeed > 0 {
	
	if CheckingFor != noone 
	{
		
	if place_meeting(x,y+8,CheckingFor) {
	if !place_meeting(x,y,Obj_FishBubble) {
		instance_create_layer(x,y,layer,Obj_FishBubble)
		}
	facing = -facing
	alarm[2] = 25
	yspeed = -jumpspeed
	} else {
		if y > starty + 32 {
			if grav != 0
			{
			sprite_index = Spr_AquaJumper_Funny
			alarm[1] = 150	
			xspeed = 0
			yspeed = 0
			grav = 0
			}
			}
		}
	} else {
		if !place_meeting(x,y,Obj_FishBubble) {
		instance_create_layer(x,y,layer,Obj_FishBubble)
		}
	facing = -facing
	alarm[2] = 25
	yspeed = -jumpspeed
	}
}
	
x += xspeed*facing
image_xscale = facing
yspeed += grav
y+=yspeed
}

if hp <= 0 {
audio_play_sound(Snd_BlockBreak,0,0)
instance_create_layer(x+2,y,layer,Obj_EnemyFlameSpark)
instance_create_layer(x-2,y,layer,Obj_EnemyFlameSpark)
instance_create_layer(x+2,y-3,layer,Obj_EnemyFlameSpark)
instance_create_layer(x-2,y-3,layer,Obj_EnemyFlameSpark)
hp -=1
}
if hp <= -2 instance_destroy()

if sprite_index = Spr_AquaJumper {
	
	if abs(yspeed > 1) {
		if 	yspeed > 0 image_index = 2
		if yspeed < 0 image_index = 1;
	} else image_index = 0
	
	}
if alarm[2] > 0 image_index = 1