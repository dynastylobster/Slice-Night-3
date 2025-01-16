/// @description Insert description here
// You can write your code in this editor
if !global.paused {
	if phase != 2 {
instance_create_layer(x+random_range(-32,32),y,layer,Obj_BossThumper);
	}
	if phase = 2 {
		var attack = choose(Obj_BossThumper,"both")
		if attack = "both" {
		instance_create_layer(x+random_range(-16,16),y,layer,Obj_BossThumper);
		instance_create_layer(x+random_range(-32,32),y,layer,Obj_ShrapnelBerry);
		} else {
			instance_create_layer(x+random_range(-16,16),y,layer,attack);
		}
	}
alarm[1] = 240

} else {
alarm[1] = 1	
}
