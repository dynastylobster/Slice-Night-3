/// @description Insert description here
// You can write your code in this editor
draw_sprite_ext(Spr_model1_TPball1,1,x,y,1,1,angle,c_white,1);

draw_self();
gpu_set_blendmode(bm_add)
draw_sprite_ext(Spr_model1_TPball1,2,x,y,1,1,-angle,c_white,1);
gpu_set_blendmode(bm_normal)