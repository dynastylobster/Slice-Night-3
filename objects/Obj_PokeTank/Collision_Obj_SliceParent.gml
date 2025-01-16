/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event

if Obj_SliceParent.done_slicing = false {
xspeed *= 0.125
alarm[0] = 60
}
GetSlicedNuanced();
/*
if other.done_slicing = false {
instance_create_layer(x,y-10,layer,Obj_EnemyHurtEffect)
hp -= 1
other.done_slicing = true
}

