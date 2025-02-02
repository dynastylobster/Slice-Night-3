/// @description Insert description here
// You can write your code in this editor
if sprite_index != Spr_ShitBoofer_Active {
	audio_play_sound(Snd_Dink,0,0,global.SFXvolume*2);
	if instance_exists(Obj_Billy) {
	global.key_Z = true
	Obj_Billy.yspeed = -5
	if Obj_Billy.x > x
	{Obj_Billy.xspeed = 7; global.key_right = true}
	if Obj_Billy.x < x
	{Obj_Billy.xspeed = -7; global.key_left = true}
	
		sprite_index = Spr_ShitBoofer_Active
	if !instance_exists(Obj_SliceDown) {
		HitPlayer();
		} else {
		if 	Obj_Billy.y > y-24 HitPlayer();
		}
	
	}
	alarm[0] = 45
	instance_create_layer(x,y,layer,Obj_ParryBallEffect);

	}