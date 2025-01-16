/// @description Insert description here
// You can write your code in this editor

if other.image_xscale != image_xscale {
	if !instance_exists(Obj_FlameSliceCollide)
		instance_create_layer(lerp(x,other.x,0.5),lerp(y,other.y,0.5),layer,Obj_FlameSliceCollide);
	}

with(other) {
		instance_destroy();
	}