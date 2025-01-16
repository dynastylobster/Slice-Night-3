/// @description Insert description here
// You can write your code in this editor
CheckOnscreen();

if !active and !timed {
		if instance_exists(Obj_Billy)
		{
			if distance_to_point(Obj_Billy.x,Obj_Billy.y) <= 76 {
				alarm[0] = 45;
				if onscreen audio_play_sound(Snd_Warning,0,0,global.SFXvolume);
				active = 1;
				
			}
		}
	}
	
if !active and timed {
		if alarm[0] = 45 {
		if onscreen audio_play_sound(Snd_Warning,0,0,global.SFXvolume);
		active = 1;
		}
	}

if alarm[0] > 0{
		if global.paused then alarm[0]++
	}
	
if timed {
		if alarm[0] > 45 and alarm[0] < 80 image_index = 0
	}