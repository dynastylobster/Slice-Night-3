/// @description Insert description here
// You can write your code in this editor
draw_self();
if alarm[1] > 0
{
gpu_set_blendmode(bm_add)
draw_sprite_ext(sprite_index,image_index,x,y,image_xscale+random_range(0.01,0.3),image_yscale+random_range(0.01,0.3),0,c_white,1 - (alarm[1]/78) )
gpu_set_blendmode(bm_normal)
}