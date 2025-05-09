/// @description Insert description here
// You can write your code in this editor

age++

if image_index = 1 {
		mask_index = Spr_Empty;
	}
	if image_index = 0 {
		mask_index = sprite_index	
	}
	
	if instance_number(Obj_Key) < Requirement  {
		
		if image_index = start_index {
	
	with(instance_create_depth(x,y,depth-25,Obj_NumberLockEffect)) {
			image_angle = (instance_nearest(x,y,Obj_NumberLock)).image_angle;
			}	
			
		}
		image_index = !start_index;
	}
	
	
if age >= 20 {
		color = #009900
	}
if age >= 40 age = 0
if age < 20 color = #00FF00