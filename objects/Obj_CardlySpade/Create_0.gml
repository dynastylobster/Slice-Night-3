/// @description Insert description here
// You can write your code in this editor
if instance_exists(Obj_Cardly) {
		direction = point_direction(Obj_Cardly.x,Obj_Cardly.y,x,y);
		audio_play_sound(Snd_SliceNew,0,0,global.SFXvolume*0.4,0,1.1)
		image_angle = direction;
		speed = 3;
	}