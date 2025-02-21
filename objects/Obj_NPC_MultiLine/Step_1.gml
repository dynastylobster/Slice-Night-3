/// @description Insert description here
// You can write your code in this editor
if drawing and !global.paused {
depth = layer_get_depth(layer_get_id("GameObjectLayer"))-200
} else {
	depth = layer_get_depth(layer_get_id("Instances_1"))
}