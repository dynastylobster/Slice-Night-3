/// @description Insert description here
// You can write your code in this editor
if !sheilding {
		image_index = 2
		if instance_exists(Obj_Billy) {
			instance_create_depth(x+dir*16,y-4,depth-25,Obj_SheildShooterCannonBallGrav);
			if onscreen {
			audio_play_sound(Snd_Land,0,0,global.SFXvolume*3,0,0.75);	
			audio_play_sound(Snd_Land,0,0,global.SFXvolume*1.5,0,1);
			audio_play_sound(Snd_BlockBreak,0,0,global.SFXvolume*0.5)
			}
		}
		
		
	}
alarm[1] = 65;