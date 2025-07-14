/// @description Insert description here
// You can write your code in this editor
if !global.paused {
draw_x = x+irandom_range(-1,1);

if place_meeting(x,y-2,Obj_Billy) {
		
		if Obj_Billy.grounded {
				y-= 1.5
				
		/*		if instance_exists(Obj_ShiftPillarWhite) {
				with(instance_nearest(x,y,Obj_ShiftPillarWhite)) {
						y-= 1.5
				}
		} */
				
		}
		
	} else {
		if y > starty y-= 1
		y = floor(y)
		if y < starty y+= 1
	}

}