/// @description Insert description here
// You can write your code in this editor
image_index = 1;
if onscreen {
audio_play_sound(Snd_BerryShoot,0,0,global.SFXvolume*1.5);
instance_create_layer(x-8,y,layer,Obj_FlameBall)
instance_create_layer(x+8,y,layer,Obj_FlameBall)
instance_create_layer(x,y-8,layer,Obj_FlameBall)
instance_create_layer(x,y+8,layer,Obj_FlameBall)

if eightway {
instance_create_layer(x-8,y-8,layer,Obj_FlameBall)
instance_create_layer(x+8,y+8,layer,Obj_FlameBall)
instance_create_layer(x+8,y-8,layer,Obj_FlameBall)
instance_create_layer(x-8,y+8,layer,Obj_FlameBall)	
	}	
}

active = 2;

if timed {
		active = 0;
		alarm[0] = 120
	}