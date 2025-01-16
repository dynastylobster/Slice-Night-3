/// @description Insert description here
// You can write your code in this editor
if !touched {
	repeat(7) {
	global.confetti_id += 1
	instance_create_layer(x,y,layer,Obj_Confetti)
}
	alarm[0] = 30
	touched = true
}
other.yspeed = 0
other.xspeed = 0