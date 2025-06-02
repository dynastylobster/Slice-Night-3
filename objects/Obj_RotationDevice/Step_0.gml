/// @description Insert description here
// You can write your code in this editor
if rotating {
	if rotspeed = 0 {
		Obj_Billy.hp = 3
	HitPlayer()
	Obj_Billy.hp = 3	
	}
	layer_set_visible(layer_get_id("Lay_Shake"),true);
	if rotspeed < max_rotspeed {
		rotspeed += 0.125
	}
}

image_angle += rotspeed

if alpha_inc then alpha += 0.005

if alpha > 1.25 then Obj_WhiteOut.active = true;