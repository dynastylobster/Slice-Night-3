/// @description Insert description here
// You can write your code in this editor
image_index = 0;
if state != "drop winding" and state != "dropping" and state != "jumping"
{
	state = choose("slicing","running","jumping")
}

if instance_exists(Obj_Billy) {
if state = "jumping" {
	if y < Obj_Billy.y {
			state = choose("running","drop winding")		
		}
	}
	
}


if instance_exists(Obj_Billy) {
if distance_to_object(Obj_Billy) < 32 then state = choose("running","slicing","slicing","slicing")
}




alarm[1] = random_range(60,120)