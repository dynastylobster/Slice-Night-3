/// @description Insert description here
// You can write your code in this editor
instance_create_depth(x,y,depth,Obj_GemCollectEffect)
audio_play_sound(Snd_GhostChomp,0,0,global.SFXvolume,0,0.9);
instance_destroy();