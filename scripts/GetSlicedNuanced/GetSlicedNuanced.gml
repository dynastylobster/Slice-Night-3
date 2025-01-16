// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function GetSlicedNuanced(){
if place_meeting(x,y,Obj_SliceSide)or place_meeting(x,y,Obj_SliceDown) {

	if place_meeting(x,y,Obj_FlameSlice) {
		with (Obj_FlameSlice) {
			instance_destroy();	
		}
	}

if other.done_slicing = false {
instance_create_depth(x,y,depth,Obj_EnemyHurtEffect)
hp -= 1
other.done_slicing = true
}

} else {

if other.done_slicing = false {
instance_create_depth(x,y,depth,Obj_EnemyHurtEffect)
hp -= 0.5
other.done_slicing = true
}
	
}




}