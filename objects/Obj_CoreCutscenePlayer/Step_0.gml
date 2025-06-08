/// @description Insert description here
// You can write your code in this editor
if jumping {
	draw_y = y
		if gain < 1 gain += 0.25
		draw_x = x
		if yspeed < 0 image_index = 0
		if yspeed > 1 image_index = 1
		yspeed += grav
		y+= yspeed
		x+= xspeed
	}
	
if place_meeting(x,y+1,Obj_Wall) {
	if jumping {
		
		repeat(16){
		instance_create_depth(x+random_range(-20,20),y+random_range(12,19),depth-25,Obj_GoalBoxSparkle)	
		}
		instance_create_depth(x,y+15,depth-25,Obj_FishBubble)
		instance_create_depth(x+23,y+15,depth-25,Obj_EnemyHurtEffect)
		
		audio_play_sound(Snd_Booster,0,0,global.SFXvolume*2,0,1)
		audio_play_sound(Snd_Booster,0,0,global.SFXvolume*0.75,0,0.5)
	audio_play_sound(Snd_TrainScratch,0,true,global.SFXvolume*0.25,0,1.1)
	audio_play_sound(Snd_TrainScratch,0,true,global.SFXvolume*0.25,0,0.3)
	audio_play_sound(Snd_GhostChomp,0,0,global.SFXvolume*2,0,0.25)
	image_speed = 1	
	}
		jumping = false
		sprite_index = Spr_CoreCutscene
	}
	if !jumping {
	draw_y = y+random_range(-(xspeed/15),(xspeed/15))
	x+= xspeed
	image_speed += 1/400
	draw_x = x+sin(age/5)*13
	age+= 0.125 + (xspeed/40)
	xspeed += 0.05
	}
audio_sound_gain(Sng_SlicerOfthe7DreamsUpbeatRemiSx,gain,0)

if x > room_width {
		gain -= 0.01
		if gain <= 0 {
		room_goto(dest)	
		}
	}