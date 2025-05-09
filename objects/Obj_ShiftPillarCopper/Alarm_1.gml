/// @description Insert description here
// You can write your code in this editor
zapping = true;
if onscreen {
		audio_play_sound(Snd_Slice,0,0,global.SFXvolume*0.25,0,0.75);
	}
	repeat(4) {
instance_create_depth(x+random_range(-16,16),y+random_range(0,8),depth-25,Obj_EmberEffect);
	}
alarm[2] = 30;
alarm[1] = 240;