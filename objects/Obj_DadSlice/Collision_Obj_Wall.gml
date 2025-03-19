/// @description Insert description here
// You can write your code in this editor
audio_play_sound(Snd_BlockBreak,0,0,global.SFXvolume);
audio_play_sound(Snd_EnemyExplode,0,0,global.SFXvolume);
repeat(3){
instance_create_layer(x+xspeed*28,y,layer,Obj_SliceBlockParticle)
}
instance_create_layer(x+xspeed*28,y,layer,Obj_DadSliceRebound);
instance_destroy();