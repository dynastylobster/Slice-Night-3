/// @description Insert description here
// You can write your code in this editor

if instance_exists(Obj_EvilTrainBoss) and place_meeting(x,y,Obj_EvilTrainFace) {
		if x > Obj_EvilTrainFace.x-5 {
			if place_meeting(x,y,Obj_SliceBlockParticle) {
			with(Obj_SliceBlockParticle) {instance_destroy();}	
			}
			mask_index = Spr_Empty;
			image_speed = 1.5
			}
	}
depth -= 100
age = 0
if global.costume = "Billy (SMW)" {
		sprite_index = Spr_EnemyDeathSMW
	}