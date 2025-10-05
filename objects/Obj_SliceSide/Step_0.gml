/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();

if instance_exists(EnemyParentObject) {
		if distance_to_object(instance_nearest(x,y,EnemyParentObject)) <= 8 {
			dont_flameslice = true;	
		}
	}
	
	if instance_exists(Obj_Dad) {
		if distance_to_object(instance_nearest(x,y,Obj_Dad)) <= 12 {
			dont_flameslice = true;	
		}
	}


	
if instance_exists(Obj_SliceBlock) {
		if !place_meeting(x,y+4,Obj_SliceBlock) {
		if distance_to_object(instance_nearest(x,y,Obj_SliceBlock)) <= 8 {
			dont_flameslice = true;	
		}
		}
	}

if instance_exists(Obj_Billy) {
x = Obj_Billy.x + (image_xscale*10)	
y = Obj_Billy.y

if floating {
	if abs(Obj_Billy.xspeed) < 3 {
	if abs(Obj_Billy.xspeed) < 1 {
	Obj_Billy.xspeed = Obj_Billy.facing	
	}
	
	Obj_Billy.xspeed *= 1.3
		}
	if Obj_Billy.yspeed > -1 Obj_Billy.yspeed = -3
	}
}

if place_meeting(x,y,Obj_BillyShip) {
sprite_index = Spr_SliceSideShip	
if global.character = "Robot" sprite_index = Spr_SliceSideShipMotu
}

if !flamesliced and !dont_flameslice {
if global.flameslice or global.costume = "Cardly" {
if !global.paused {
		if !place_meeting(x,y,Obj_FlameSlice) {
			if image_index >0 and image_index < 1
			{
				if instance_number(Obj_FlameSlice) < 3 {
						instance_create_depth(x,y,depth,Obj_FlameSlice)
						flamesliced = true;
					}
			}
		}
	}
}

}