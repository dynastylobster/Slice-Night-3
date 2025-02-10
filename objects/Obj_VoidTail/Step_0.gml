/// @description Insert description here
// You can write your code in this editor
if instance_exists(Obj_Billy) {
image_speed = abs( (0.5) + ((Obj_Billy.xspeed + Obj_Billy.yspeed)/3) )
image_xscale = Obj_Billy.image_xscale;
}
if global.costume != "Void" and global.costume != "Void (Clown)" {
		instance_destroy();
	}
	
if global.costume = "Void" {
		sprite_index = Spr_VoidTail
	} else {
		sprite_index = Spr_VoidTailC
	}