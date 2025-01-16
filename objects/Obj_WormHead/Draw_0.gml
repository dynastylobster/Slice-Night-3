/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
depth = 250
draw_sprite_ext(Spr_FlameballThrower,0,x,y,1,1,0+(age*4),c_white,1);
draw_sprite_ext(Spr_FlameballThrower,0,x-1,y-1,1,1,45+(age*4),c_white,1);
event_inherited();
depth = layer_get_depth(layer_get_id("Instances_1"))
