/// @description Insert description here
// You can write your code in this editor
if other.object_index != Obj_FlameSlice {
		if sliced = false {
			alarm[0] = 1
			repeat(4) {
			instance_create_layer(x,y,layer,Obj_SliceBlockParticle)
			}
			with(Obj_SliceBlockParticle) {
					sprite_index = Spr_SliceBlockRedParticle;
				}
			audio_play_sound(Snd_BlockBreak,0,0,global.SFXvolume);
			other.done_slicing = true	
		}
	} else {
	with(instance_nearest(x,y,Obj_FlameSlice)) {
			instance_destroy();
		}
	}