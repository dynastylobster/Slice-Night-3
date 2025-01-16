/// @description Insert description here
// You can write your code in this editor
with(Obj_WarpBox) {
repeat(7) {
	global.confetti_id += 1
	instance_create_layer(x,y,layer,Obj_Confetti)
}
}
	if instance_exists(Obj_BillyShip) {
	Obj_BillyShip.x = dest_x	
	Obj_BillyShip.y = dest_y	
	}
	Obj_Billy.x = dest_x
	Obj_Billy.y = dest_y