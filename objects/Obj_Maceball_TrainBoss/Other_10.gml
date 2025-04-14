/// @description Insert description here
// You can write your code in this editor
	if instance_number(Obj_SliceBlockParticle) < 9 {
 if	instance_number(Obj_EnemyHurtEffect) < 1 {
		instance_create_depth(x,y,depth-100,Obj_EnemyHurtEffect);
	}
	audio_play_sound(Snd_Dink,0,0,global.SFXvolume*2,0,0.8);
	repeat(3) {
	instance_create_depth(x,y+12,depth,Obj_SliceBlockParticle)
	}
	}
	image_index = 2;
	direction = point_direction(x,y,Obj_Model1Train.x,Obj_Model1Train.y)
	speed = 8;