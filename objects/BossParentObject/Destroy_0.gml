/// @description Insert description here
// You can write your code in this editor
instance_create_depth(x,y,depth,Obj_BossDefeatExplosion);
audio_stop_sound(global.music)
global.music = noone
audio_play_sound(Snd_BossDefeat,0,0,1.3)