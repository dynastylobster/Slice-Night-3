/// @description Insert description here
// You can write your code in this editor
if instance_exists(Obj_Billy) {
		if Obj_Billy.x > room_width Obj_Billy.x = 0
		if Obj_Billy.x < 0 Obj_Billy.x = room_width
	}
if instance_exists(BossParentObject) {
		if BossParentObject.x > room_width BossParentObject.x = 0
		if BossParentObject.x < 0 BossParentObject.x = room_width
	}
if instance_exists(Obj_FlameSlice) {
	with(Obj_FlameSlice) {
		if x > room_width-5 x = 5
		if x < 5 x = room_width-5
	}
	}