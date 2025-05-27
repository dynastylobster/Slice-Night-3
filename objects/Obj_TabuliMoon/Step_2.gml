/// @description Insert description here
// You can write your code in this editor
if instance_exists(Obj_BgTabuli) {
		x = Obj_BgTabuli.x + sin(age/8)*80 * Obj_BgTabuli.image_xscale;
		y = Obj_BgTabuli.y - sin(age/8)*20 * Obj_BgTabuli.image_xscale;
		
		if x > Obj_BgTabuli.x +40 {
			depth = Obj_BgTabuli.depth+5	
		}
				if x < Obj_BgTabuli.x -40 {
			depth = Obj_BgTabuli.depth-5	
		}
	}