/// @description Insert description here
// You can write your code in this editor
if Obj_VoidBoss.laserPhase = 2 {
	if !place_meeting(x,y,Obj_VoidLazerEffect) {
			instance_create_depth(x,y,depth-300,Obj_VoidLazerEffect)
		}
	} else {
	if instance_exists(Obj_VoidLazerEffect) {
		with Obj_VoidLazerEffect 
		{
		instance_destroy();
		}
		}
	}