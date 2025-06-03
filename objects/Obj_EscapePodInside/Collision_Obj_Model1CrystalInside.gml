/// @description Insert description here
// You can write your code in this editor
image_index = 1;
instance_create_depth(209,143,depth-4,Obj_GemCollectEffect)
audio_play_sound(Snd_Absorption,0,0,global.SFXvolume,0,0.75)
audio_play_sound(Snd_DashCrystal,0,0,global.SFXvolume,0,0.5)
audio_play_sound(Snd_BossDefeat,0,0,global.SFXvolume,0,0.5)
mask_alpha = 1;
with(Obj_Model1CrystalInside) {
		instance_destroy();
	}