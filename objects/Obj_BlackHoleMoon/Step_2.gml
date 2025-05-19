/// @description Insert description here
// You can write your code in this editor
if instance_exists(Obj_BgBlackHole) {
		age+= 0.125
	if distance_to_point(Obj_BgBlackHole.x,Obj_BgBlackHole.y) < 46 color = (#4444FF)
	if distance_to_point(Obj_BgBlackHole.x,Obj_BgBlackHole.y) < 14 color = (#9999FF)
	if distance_to_point(Obj_BgBlackHole.x,Obj_BgBlackHole.y) < 10 color = (#FFFFFF)
	
		if x < Obj_BgBlackHole.x - 16 {
		depth = Obj_BgBlackHole.depth -5
	}
	if x > Obj_BgBlackHole.x + 16 {
		depth = Obj_BgBlackHole.depth +5
	}	
	
	x = Obj_BgBlackHole.x+  (sin((age/2-distance_x)) )*30;
	y = Obj_BgBlackHole.y+(sin((age/2-distance_y)) )*5;
	
	
	
	}