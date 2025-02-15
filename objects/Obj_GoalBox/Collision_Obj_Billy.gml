/// @description Insert description here
// You can write your code in this editor
GameObject.igt_done = true;
if !touched {
	repeat(7) {
	global.confetti_id += 1
	instance_create_layer(x,y,layer,Obj_Confetti)
	if sprite_index != Spr_SecretBox
	{	
		if image_index = 0 audio_play_sound(Snd_NormalClear,0,0)
		if image_index = 1 audio_play_sound(Snd_SpecialClear,0,0)
		if image_index = 2 audio_play_sound(Snd_NightmareClear,0,0)
		if image_index = 3 audio_play_sound(Snd_Absorption,0,0)
		} else {
		if !audio_is_playing(Snd_SecretClear) {
	audio_play_sound(Snd_SecretClear,0,0)	}
	}
}
	GameObject.fading_out = true
	alarm[0] = 270

	
	global.totalstage += 1
	if sprite_index = Spr_SecretBox global.totalsecret += 1
	ini_open("save.ini");
	ini_write_real(global.save,"TotalStage",global.totalstage);
	ini_write_real(global.save,"TotalSecret",global.totalsecret);
	ini_close();
	
	touched = true
}

if instance_exists(Obj_SliceParent) {
	with(Obj_SliceParent) {instance_destroy()}
	}
other.yspeed = 0
other.xspeed = 0
other.x = x
other.y = y