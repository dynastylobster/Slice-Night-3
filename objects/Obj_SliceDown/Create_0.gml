/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();
parryball = false
if instance_exists(Obj_Billy) {
image_xscale = Obj_Billy.image_xscale	
}
if global.character = "Robot" {
		sprite_index = Spr_SliceDownMotu
	}
if global.character = "Coyote" {
		sprite_index = Spr_SliceDownVoid
	}