/// @description Insert description here
// You can write your code in this editor
	repeat(3) {
with(instance_create_depth(x,y,depth+10,Obj_SliceBlockParticle)) {
		sprite_index = Spr_glassparticle
	}
	}
audio_play_sound(Snd_Glass,0,0,global.SFXvolume*0.5,0,1.1);
audio_play_sound(Snd_Glass,0,0,global.SFXvolume*1.25,0,0.9);