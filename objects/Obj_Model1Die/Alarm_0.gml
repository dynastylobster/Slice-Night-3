/// @description Insert description here
// You can write your code in this editor
audio_stop_sound(Snd_RumbleExplode)
audio_play_sound(Snd_GhostChomp,0,0,global.SFXvolume*2,0,0.5)
audio_play_sound(Snd_GhostChomp,0,0,global.SFXvolume*2,0,1)
audio_play_sound(Snd_GhostChomp,0,0,global.SFXvolume*1,0,0.25)
audio_play_sound(Snd_BerryShoot,0,0,global.SFXvolume,0,0.25)
instance_create_depth(x,y,depth-100,Obj_Model1Crystal)
instance_create_depth(x,y,depth+4,Obj_GemCollectEffect)

repeat(70) {
		instance_create_depth(x+random_range(-100,30),y+random_range(-40,40),depth+30,Obj_SliceBlockParticle)
	}
	with (Obj_SliceBlockParticle) {
		var big = irandom_range(1,5)
		if big = 1 {
			sprite_index = Spr_SliceBlockParticleBlack	
			image_xscale = 6
			image_yscale = 6
		} else {
		sprite_index = Spr_SliceBlockParticleBlack	
		}
	}
layer_set_visible(layer_get_id("Effect_1"),false);
layer_set_visible(layer_get_id("TileCollision"),false);
layer_set_visible(layer_get_id("Assets_1"),false);
layer_set_visible(layer_get_id("Assets_2"),false);
instance_destroy();