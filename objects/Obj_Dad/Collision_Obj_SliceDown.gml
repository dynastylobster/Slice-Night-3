/// @description Insert description here
// You can write your code in this editor
if !other.done_slicing {
		hp-= 0.5
		hit = true;
		alarm[3] = 15;
			instance_create_depth(lerp(x,other.x,0.5),lerp(y,other.y,0.5),depth-25,Obj_EnemyHurtEffect);
		audio_play_sound(Snd_BillyHurt,0,0,global.SFXvolume/1.5,0,0.7)
				audio_play_sound(Snd_Die,0,0,global.SFXvolume/1.5,0,0.85)
		other.done_slicing = true;
	}