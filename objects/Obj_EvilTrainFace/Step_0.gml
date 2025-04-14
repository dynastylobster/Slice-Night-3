/// @description Insert description here
// You can write your code in this editor
if !global.paused {

if image_index < 1 and alarm[0] < 1 {
		image_speed = 0
	}
if image_index > 1 and image_index < 3 and alarm[1] < 1 {
		image_speed = 1
	}
if image_index > 1 {
mask_index = Spr_Empty
} else mask_index = sprite_index;

if image_index < 3 and image_index > 2.75 and instance_number(Obj_CannonTrackerBall) < 1 {
	audio_play_sound(Snd_CannonShoot,0,0,global.SFXvolume*3)
	audio_play_sound(Snd_Land,0,0,global.SFXvolume*2,0,0.8)
		instance_create_depth(x,y,depth,Obj_WallJumpEffect)
		instance_create_depth(x,y,depth-25,Obj_CannonTrackerBall);
	}
	
}
	
ispeed = image_speed
if global.paused {
		image_speed = 0;
		if alarm[0] > 0 alarm[0]++
		if alarm[1] > 0 alarm[1]++
	} else image_speed = ispeed;
	
if !instance_exists(Obj_EvilTrainBoss) {
		with(Obj_CannonTrackerBall) {
			instance_destroy();	
		}
		repeat(7){
		instance_create_depth(x,y,depth,Obj_EnemyFlameSpark)
		}
		instance_destroy();
	}