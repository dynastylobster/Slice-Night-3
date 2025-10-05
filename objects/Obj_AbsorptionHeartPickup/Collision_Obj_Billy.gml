/// @description Insert description here
// You can write your code in this editor
other.max_hp = 6
audio_play_sound(Snd_Absorption,0,0);
other.hp = 6
instance_create_depth(x-9,y,depth,Obj_HPSparkles)
instance_create_depth(x,y,depth,Obj_HPSparkles)
instance_create_depth(x+9,y,depth,Obj_HPSparkles)
instance_destroy();
