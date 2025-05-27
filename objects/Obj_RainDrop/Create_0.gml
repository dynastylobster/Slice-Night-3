/// @description Insert description here
// You can write your code in this editor
width = choose(0.5,1)

if width = 1 {
		depth = layer_get_depth(layer_get_id("Instances_1"))-5
	} else {
	depth = layer_get_depth(layer_get_id("Bg_1"))-5	
	}