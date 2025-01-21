if drawing and !global.paused {
depth = layer_get_depth(layer_get_id("GameObjectLayer"))-200
} else {
	depth = layer_get_depth(layer_get_id("Instances_1"))
}

age += 0.125
if age >= 256 then age = 0

if !place_meeting(x,y,Obj_Billy) {
	drawing = false
	}
	
if (y >= 450 && room_get_name(room) == "L_Tabuli_2") {
room_goto(Void_Boss_Room);
}