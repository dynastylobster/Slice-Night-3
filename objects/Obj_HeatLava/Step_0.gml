/// @description Insert description here
// You can write your code in this editor
CheckOnscreen();

if instance_exists(Obj_Billy) {
		if distance_to_object(Obj_Billy) <= 38 Obj_Billy.heat += 1
		if distance_to_object(Obj_Billy) <= 18 Obj_Billy.heat += 1
		if distance_to_object(Obj_Billy) <= 12 Obj_Billy.heat += 1
		if distance_to_object(Obj_Billy) <= 8 Obj_Billy.heat = 599
	}