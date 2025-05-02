/// @description Insert description here
// You can write your code in this editor
instance_create_layer(x,y,layer,Obj_model1_defeat);
audio_stop_sound(global.music)
global.music = noone
audio_play_sound(Snd_BossDefeat,0,0,1.3)
ini_open("save.ini")
	ini_write_real(global.save, "model1fight1", 1)
ini_close();