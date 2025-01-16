/// @description Insert description here
// You can write your code in this editor
instance_create_layer(x,y,layer,Obj_BillyShipBoom)
audio_play_sound(Snd_land,0,0,1)
audio_play_sound(Snd_BlockBreak,0,0,0.6)
instance_destroy();