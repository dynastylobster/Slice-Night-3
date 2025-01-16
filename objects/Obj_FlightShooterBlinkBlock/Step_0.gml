/// @description Insert description here
// You can write your code in this editor
if on 
{
if !even image_index = 2
if even image_index = 0
} else {
if even image_index = 2
if !even image_index = 0
}




if instance_exists(Obj_Billy) and instance_exists(BossParentObject){
	if BossParentObject.hit = false {
	if Obj_Billy.y > y then image_index = 2
	if Obj_Billy.y <= y {if alarm[0] <= 0 image_index = 0}
	} else {
	image_index = 2	
	}
	y = (BossParentObject.starty-BossParentObject.height)+32
	if BossParentObject.hit and alarm[0] <= 0 {
	alarm[0] = 120	
	}
}

if image_index = 0 then mask_index = Spr_BlinkBlock;
if image_index = 2 then mask_index = Spr_Empty;

