/// @description Insert description here
// You can write your code in this editor
if global.paused {
		if alarm[0] > 0 alarm[0]++
	}
age += 0.25

if sprite_index = Spr_AntiSliceBlock {
		if !instance_place(x,y,[Obj_Wall, autoTileCol]) {
				instance_create_layer(x-sprite_width/2,y-sprite_height/2,layer,[Obj_Wall, autoTileCol])
			}	else {
				instance_place(x,y,[Obj_Wall, autoTileCol]).image_xscale = sprite_width/16	
				instance_place(x,y,[Obj_Wall, autoTileCol]).image_yscale = sprite_height/16	
			}
	} else {
		if instance_place(x,y,[Obj_Wall, autoTileCol]) {
				with instance_place(x,y,[Obj_Wall, autoTileCol]) {instance_destroy();}	
			}
	}