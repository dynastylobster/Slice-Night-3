/// @description Insert description here
// You can write your code in this editor
if instance_exists(Obj_blinkBlock) {
		with(Obj_blinkBlock) {
			instance_create_layer(x,y,layer,Obj_OnOffDeathBlock);	
		}
	}