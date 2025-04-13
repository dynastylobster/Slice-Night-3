/// @description Insert description here
// You can write your code in this editor
if instance_exists(Obj_Train) {
		x = Obj_Train.x - 3
		y = Obj_Train.y - 32 + int64((sin(Obj_Train.age)*1.25)/1.15)
	}

if instance_exists(Obj_SliceSide) {
		if Obj_SliceSide.image_index > 0 and Obj_SliceSide.image_index < 2.75 {
		if !place_meeting(x,y,Obj_Maceball_TrainBoss) {
		if instance_number(Obj_Maceball_TrainBoss) < 1 then instance_create_depth(x-8,y-4,depth,Obj_Maceball_TrainBoss)	
		}
			sprite_index = Spr_model1_attack;	
		} else sprite_index = Spr_model1_TrainIdle
	}