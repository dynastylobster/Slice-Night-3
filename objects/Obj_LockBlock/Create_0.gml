/// @description Insert description here
// You can write your code in this editor
image_speed = 0
if global.costume = "Billy (SMW)" {
		sprite_index = Spr_LockBlockSMW;
	}
if image_xscale >= 4 {
		sprite_index = Spr_LockBlock_Big
		image_xscale = 1;
		image_yscale = 1;
	}