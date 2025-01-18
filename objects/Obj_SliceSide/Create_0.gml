/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();
dont_flameslice = false
flamesliced = false
if instance_exists(Obj_Billy) {
image_xscale = Obj_Billy.image_xscale	
}
floating = false;
if sprite_index != Spr_FlameSliceCollide {
if global.character = "Robot" {
		sprite_index = Spr_SliceSideMotu
	}
if global.character = "Coyote" {
		sprite_index = Spr_SliceSideVoid
	}
}