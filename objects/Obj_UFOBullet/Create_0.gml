/// @description Insert description here
// You can write your code in this editor
speed = 2
if instance_exists(Obj_Billy) {
		direction = point_direction(x,y,Obj_Billy.x,Obj_Billy.y);
	}
audio_play_sound(Snd_BerryShoot,0,0,global.SFXvolume)
alarm[0] = 120