/// @description Insert description here
// You can write your code in this editor
repeat(2) {
instance_create_depth(x,y,depth,Obj_EnemyFlameSpark)
}
audio_play_sound(Snd_BlockBreak,0,0,global.SFXvolume*2);
instance_destroy()