if instance_exists(Obj_Billy) {
if Obj_Billy.hp < 3 {
		var drop = irandom_range(1,3)
	if drop = 1 {
		instance_create_depth(x,y,depth,Obj_SMWHeart);
	}
	}
}


instance_create_layer(x, y, layer, Obj_Lantern);
instance_destroy();