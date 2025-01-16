/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
if global.fem {
		sprite_index = Spr_BillyMotuNPCF
	} else sprite_index = Spr_BillyMotuNPC
if drawing {
depth = layer_get_depth(layer_get_id("GameObjectLayer"))
} else {
	depth = layer_get_depth(layer_get_id("Instances_1"))
}

event_inherited();
if global.motu image_index = 1
if !global.motu image_index = 0

if instance_exists(Obj_Billy) {
		if Obj_Billy.x <= x then image_xscale = -1
		if Obj_Billy.x > x then image_xscale = 1
	}