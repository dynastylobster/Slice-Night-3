/// @description Insert description here
// You can write your code in this editor
if done_slicing 
{
	if damage = true alarm[0] = 2;
	damage = false
}

if damage = false mask_index = Spr_Empty
if damage mask_index = sprite_index

if !global.paused {
		if dir = 1 then x+=4
		if dir = -1 then x-=4
	}

if !instance_exists(Obj_Billy) {
		instance_create_layer(x,y,layer,Obj_EnemyHurtEffect);
		instance_destroy();
	}