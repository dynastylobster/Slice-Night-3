/// @description Insert description here
// You can write your code in this editor
instance_create_depth(x,y,depth,Obj_EnemyHurtEffect)
hp -= 1
repeat(4) {
instance_create_layer(x,y,layer,Obj_EnemyFlameSpark)
}
repeat(4) {
instance_create_layer(x,y,layer,Obj_SliceBlockParticle)	
}
audio_play_sound(Snd_BlockBreak,0,0,global.SFXvolume)
audio_play_sound(Snd_EnemyExplode,0,0,global.SFXvolume,0,0.9)
speed = 0;
alarm[0] = 90
ramming = false;
	with(other) {
	instance_destroy();
}