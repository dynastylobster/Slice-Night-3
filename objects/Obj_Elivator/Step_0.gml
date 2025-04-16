/// @description Insert description here
// You can write your code in this editor
if place_meeting(x,y-4,Obj_Billy) {
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