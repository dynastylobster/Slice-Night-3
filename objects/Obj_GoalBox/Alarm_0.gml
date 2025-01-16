/// @description Insert description here
// You can write your code in this editor
with(Obj_WarpBox) {
repeat(7) {
	global.confetti_id += 1
	instance_create_layer(x,y,layer,Obj_Confetti)
}
}
	if sprite_index != Spr_SecretBox {
	room_goto(destination_room);
	} else {
	room_goto(secret_room);	
	}