/// @description Insert description here
// You can write your code in this editor
active = true;
	repeat(7) {
	global.confetti_id += 1
	instance_create_layer(x,y,layer,Obj_Confetti)
}
with(other) {
	instance_destroy();	
}