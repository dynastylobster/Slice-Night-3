/// @description Insert description here
// You can write your code in this editor
audio_play_sound(Snd_BlockBreak,0,0,global.SFXvolume,0,1);
audio_play_sound(Snd_Glass,0,0,global.SFXvolume*2,0,0.8)
repeat(8) {
instance_create_depth(x,y,depth-5,Obj_EnemyFlameSpark)
}
instance_destroy();