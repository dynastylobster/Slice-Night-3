/// @description Insert description here
// You can write your code in this editor
if instance_exists(Obj_Billy) {
image_speed = (0.5) + ((Obj_Billy.xspeed + Obj_Billy.yspeed)/3)
image_xscale = Obj_Billy.image_xscale;
}
if global.costume != "Void" {
		instance_destroy();
	}