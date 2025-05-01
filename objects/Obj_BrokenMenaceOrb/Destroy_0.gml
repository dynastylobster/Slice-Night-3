/// @description Insert description here
// You can write your code in this editor
if image_yscale = 1 {
with(instance_create_depth(x,starty,depth,Obj_BrokenMenaceOrb)) 
		{
		image_yscale = 1
	}
}

if image_yscale = -1 {
with(instance_create_depth(x,starty,depth,Obj_BrokenMenaceOrb)) 
		{
		image_yscale = -1
	}
}

if instance_exists(Obj_SliceParent) {
		if instance_nearest(x,y,Obj_SliceParent).done_slicing {
		if drop = 6{
		instance_create_depth(x,y,depth,Obj_SMWHeart);
	}	
		}
	}