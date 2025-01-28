if drawing and !global.paused {
depth = layer_get_depth(layer_get_id("GameObjectLayer"))-200
} else {
	depth = layer_get_depth(layer_get_id("Instances_1"))
}

age += 0.125
if age >= 256 then age = 0

if !place_meeting(x,y,Obj_Billy) {
	drawing = false
	line = 0;
	}
	
if (!global.paused) {
if (hasGravity) {
if !place_meeting(x,y+4,Obj_Wall) {
yaceel += grav;
y += yaceel;
} else {
yaceel = 0;
}
}
}

if (y >= room_height && room_get_name(room) == "L_Tabuli_2") {
if (age2 < 150) {
Blackscreen();
}
if (age2 >= 150) {
room_goto(Void_Boss_Room);
}
age2++;
}