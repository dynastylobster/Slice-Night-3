/// @description Insert description here
// You can write your code in this editor
age += 0.125
if instance_exists(Obj_BgBlackHole) {
		x = Obj_BgBlackHole.x + sin(age/23) * 150
		y = Obj_BgBlackHole.y + sin(age/23) * 40
		
		if x < Obj_BgBlackHole.x image_index = 0
		else image_index = 1;
		
		if x < Obj_BgBlackHole.x -80 {
		depth = Obj_BgBlackHole.depth-60	
		infront = true
		}
				
		if x > Obj_BgBlackHole.x +80 {
		depth = Obj_BgBlackHole.depth+60
		infront = false
		}

	lensingsize = 18 - clamp(distance_to_point(Obj_BgBlackHole.x,Obj_BgBlackHole.y),0,18)

		
	}

