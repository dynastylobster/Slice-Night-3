/// @description Insert description here
// You can write your code in this editor
if place_meeting(x,y+12,Obj_BasketBallSpikey) or place_meeting(x,y-12,Obj_BasketBallSpikey) or place_meeting(x+12,y,Obj_BasketBallSpikey) or place_meeting(x-12,y,Obj_BasketBallSpikey) {
		if image_index != 1 {
		alarm[0] = 5
			repeat(7) {
	global.confetti_id += 1
	instance_create_layer(x,y,layer,Obj_Confetti)
}
		image_index = 1
		}
	}