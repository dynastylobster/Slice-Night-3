/// @description Insert description here
// You can write your code in this editor
audio_play_sound(Snd_BlockBreak,0,0)
audio_play_sound(Snd_Glass,0,0,global.SFXvolume,0,0.7)
repeat(3) {
	instance_create_depth(x,y,depth,Obj_SliceBlockParticle)	
}
with (Obj_SliceBlockParticle) {
if place_meeting(x+8,y+8,Obj_GlassBlock) {
		sprite_index = Spr_glassparticle
	}
}
if !place_meeting(x,y,Obj_SMWHeart) {
instance_create_depth(x,y,depth,Obj_SMWHeart);
}
instance_destroy();