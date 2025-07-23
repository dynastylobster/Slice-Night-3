/// @description Insert description here
// You can write your code in this editor
draw_self();
gpu_set_blendmode(bm_add)
draw_set_alpha(opacity)
draw_sprite(sprite_index,1,x,y)
gpu_set_blendmode(bm_normal)
draw_set_alpha(1)