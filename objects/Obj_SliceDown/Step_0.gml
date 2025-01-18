/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();
if instance_exists(Obj_Billy) {
x = Obj_Billy.x
y = Obj_Billy.y + 13

if done_slicing{
	if abs(Obj_Billy.xspeed) < 3 {
	if abs(Obj_Billy.xspeed) < 1 {
		if !parryball
		{
		if abs(Obj_Billy.xspeed) > 0.125 	
			{
				Obj_Billy.xspeed = Obj_Billy.facing	
				}
		} else {
			Obj_Billy.xspeed = Obj_Billy.facing	
		}
//	Obj_Billy.xspeed = Obj_Billy.facing	
	
	}
	
 if parryball or abs(Obj_Billy.xspeed) > 0.125 
 {	
	 if global.character = "Human"  Obj_Billy.xspeed *= 1.3
	if global.character = "Robot" Obj_Billy.xspeed *= 1.65
	if global.character = "Coyote" Obj_Billy.xspeed *= 1.2
	 
	 }
	
		}
	if Obj_Billy.yspeed > -1 Obj_Billy.yspeed = -3
	}
}