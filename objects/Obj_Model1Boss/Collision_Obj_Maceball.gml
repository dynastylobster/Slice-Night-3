/// @description Insert description here
// You can write your code in this editor
if other.age >= 30 {
		if other.sliced {
		instance_create_depth(x,y,depth,Obj_EnemyHurtEffect)
		hp -= 1
		audio_play_sound(Snd_EnemyExplode,0,0,global.SFXvolume,0,random_range(0.8,1))
		}
	yanking = false;
	with(other) {
		instance_destroy();	
	}
		
	}
