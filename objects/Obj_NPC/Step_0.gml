/// @description Insert description here
// You can write your code in this editor

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

if instance_exists(Obj_Billy) {
	if plural {
	if Obj_Billy.x <= x then image_index = character_1
	if Obj_Billy.x > x then image_index = character_2
	}
}

if falling and !global.paused {
if instance_exists(Obj_Billy) {
	if Obj_Billy.x <= x then image_xscale = -1
	if Obj_Billy.x > x then image_xscale = 1
}
	
	
if !place_meeting(x,y+8,Obj_Wall) {
yspeed+=grav
y+=yspeed
}
if yspeed>0 {
text_0 = "AAAAAAAAAAAAAAAAAAA"
text_1 = "AAAAAAAAAAAAAAAAAA"
text_2 = "AAAAAAAAAAAAAAAAA"
text_3 = "AAAAAAAAAAAAAAAA"
text_4 = "AAAAAAAAAAAAAAAAAA"
text_5 = "AAAAAAAAAAAAAAAAAAAA"
}

}