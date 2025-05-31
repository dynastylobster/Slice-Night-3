/// @description Insert description here
// You can write your code in this editor

with(Obj_ShitBoofer) {
	if sprite_index != Spr_ShitBoofer_Scared {
		alarm[1] = 120
		audio_play_sound(Snd_Boofer_Die,0,0,global.SFXvolume,0,1);
		sprite_index = Spr_ShitBoofer_Scared
	}
	}
with(Obj_PowerBoofer) {
	xspeed = 0;
	
	if sprite_index != Spr_ShitBoofer_Scared {
		alarm[1] = 120
		audio_play_sound(Snd_Boofer_Die,0,0,global.SFXvolume,0,1);
		sprite_index = Spr_ShitBoofer_Scared
	}
	}