/// @HALF DAMAGE FROM FLAMESLICE
HitAnyone();
/*
if place_meeting(x,y,Obj_SliceSide)or place_meeting(x,y,Obj_SliceDown) {

	if instance_place(x,y,Obj_FlameSlice) {
		with instance_place(x,y,Obj_FlameSlice) {
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



