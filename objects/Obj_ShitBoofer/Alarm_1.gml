/// @description Insert description here
// You can write your code in this editor
audio_play_sound(Snd_BlockBreak,0,0,global.SFXvolume*2,0,0.6)
audio_play_sound(Snd_BossDefeat,0,0,global.SFXvolume,0,0.75)
audio_play_sound(Snd_BerryShoot,0,0,global.SFXvolume,0,0.4)

repeat(16) {
instance_create_depth(x+random_range(-3,3),y,depth,Obj_EnemyFlameSpark)
instance_create_depth(x+random_range(-1,1),y,depth,Obj_SliceBlockParticle)
}
instance_create_depth(x,y,depth,Obj_BerryBoom)
instance_create_depth(x,y,depth-5,Obj_GemCollectEffect)
instance_create_depth(x,y,depth-50,Obj_BooferDeathDMG)
instance_destroy();