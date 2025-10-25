/// @description Insert description here
// You can write your code in this editor

if sprite_index != Spr_AntiSliceBlock {
instance_create_depth(x,y,depth,Obj_EnemyFlameSpark)
instance_create_depth(x,y,depth,Obj_EnemyFlameSpark)
instance_create_depth(x,y,depth,Obj_EnemyFlameSpark)
instance_create_depth(x,y,depth,Obj_EnemyFlameSpark)
}

if sprite_index != Spr_AntiSliceBlock {
		alarm[1] = 2
	}

sprite_index = Spr_AntiSliceBlock; 
alarm[0] = 180;
if alarm[0] = 180 {
		if !audio_is_playing(Snd_SliceReverse) {
		audio_play_sound(Snd_SliceReverse,0,0,global.SFXvolume);
		}
	}