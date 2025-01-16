/// @description Insert description here
// You can write your code in this editor
if sprite_index = Spr_ShitBoofer_Active {
	if instance_exists(Obj_Billy) {
		if Obj_Billy.grounded = false then global.key_Z = true;
		if abs(Obj_Billy.xspeed) > 6 then Obj_Billy.xspeed*= 0.95
		}
	}
if instance_exists(Obj_Billy) {
if (-sign(Obj_Billy.x-x)) != 0 then image_xscale = -sign(Obj_Billy.x-x)
}