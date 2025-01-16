/// @description Insert description here
// You can write your code in this editor
other.max_hp = 6
audio_play_sound(Snd_Absorption,0,0);
other.hp = 6
instance_create_layer(x-9,y,layer,Obj_HPSparkles)
instance_create_layer(x,y,layer,Obj_HPSparkles)
instance_create_layer(x+9,y,layer,Obj_HPSparkles)
instance_destroy();
