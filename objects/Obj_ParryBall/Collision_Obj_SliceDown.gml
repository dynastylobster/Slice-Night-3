/// @description Insert description here
// You can write your code in this editor
if other.sprite_index != Spr_FlameSliceCollide {

if other.done_slicing = false {
	
	if instance_exists(Obj_Train) {
			if instance_nearest(x,y,Obj_Train).active{
			with(instance_nearest(x,y,Obj_Train)) {
								audio_play_sound(Snd_TrainLand,0,0,global.SFXvolume*3.5,0,random_range(0.95,1.08))
				audio_play_sound(Snd_Jump,0,0,global.SFXvolume,0,0.75)
				audio_play_sound(Snd_BlockBreak,0,0,global.SFXvolume*0.75);
					yspeed = -5; y-= 6;
										repeat(5) {
					instance_create_layer(x,y,layer,Obj_EnemyFlameSpark)
					}
		}
	}
}
	
	instance_create_depth(x,y,depth,Obj_ParryBallEffect)
	audio_play_sound(Snd_ParryStar,0,0,global.SFXvolume*2);
	other.done_slicing = true
}
if instance_exists(Obj_Billy) {
Obj_Billy.yspeed = -5	
}

}