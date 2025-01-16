/// @description Insert description here
// You can write your code in this editor
if instance_exists(Obj_Billy) {
		if Obj_Billy.x < x {
			x += 4
			xspeed = 3.95
		} else {
			x -= 4
			xspeed = -3.95
		}
	other.done_slicing = true;
	if instance_exists(Obj_FlameSlice) {
			with(Obj_FlameSlice) {
			instance_destroy();
			}	
		}
	}