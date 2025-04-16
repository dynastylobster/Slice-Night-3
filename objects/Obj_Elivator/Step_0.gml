/// @description Insert description here
// You can write your code in this editor
if place_meeting(x,y-16,Obj_Billy) {
	
		if instance_exists(Obj_SliceSide) {
			instance_create_depth(Obj_Billy.x,Obj_Billy.y+12,depth,Obj_SliceDown)
		}
	
		if Obj_Billy.x < x-6 {
				Obj_Billy.x+= 1;
			}
		active++
		if active = 30 {
				audio_play_sound(Snd_Land,0,0,global.SFXvolume*3,0,0.6)
				audio_play_sound(Snd_Glass,0,0,global.SFXvolume*2,0,0.25)
				audio_play_sound(Snd_TrainScratch,0,true,global.SFXvolume*2,0,0.2)
				audio_play_sound(Sng_ElivatorMusic,0,0,global.musicvolume);
			}
		if active >= 30 {
			shaketimer++
			Obj_Billy.jumpspeed = 0;
			Obj_Billy.x = x 
			Obj_Billy.y = y+12
			if !audio_is_playing(Sng_ElivatorMusic){
				audio_stop_all();
				room_goto(L_Core_0)
			}
			if image_index = 0 {
						depth -= 75
					}
			image_index = 1
			y+= 2
		}
	}
	global.paused = false;
	
	if shaketimer < 20 and shaketimer!= 0 {
	x = irandom_range(start_x-1,start_x+1)	
	}
	else 
	{
		x = start_x	
	}
	
if place_meeting(x,y,Obj_SliceParent) {
		shaketimer = 0
		hp -= 1
		with(Obj_SliceParent) {
			instance_destroy();	
		}
	}
	
if hp = 0 {
	if audio_is_playing(Sng_ElivatorMusic) {
	audio_stop_all();	
	}
	audio_play_sound(Snd_BlockBreak,0,0,global.SFXvolume,0,0.8);
	audio_play_sound(Snd_BlockBreak,0,0,global.SFXvolume,0,1);
	repeat(7){
	instance_create_depth(x,y,depth-50,Obj_SliceBlockParticle)
	}
		instance_destroy();
	}