/// @description Insert description here
// You can write your code in this editor
audio_play_sound(Snd_BerryShoot,0,0,global.SFXvolume*2,0,1.14);
repeat(3) {
	instance_create_depth(x,y,depth,Obj_SliceBlockParticle)
}
with(Obj_SliceBlockParticle) {
		sprite_index = Spr_SliceBlockRedParticle
	}
instance_destroy();