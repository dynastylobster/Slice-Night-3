/// @description Insert description here
// You can write your code in this editor
draw_set_color(c_black)
draw_circle(x,y,15,false)
draw_set_color(c_white)
gpu_set_blendmode(bm_add);
draw_self();
gpu_set_blendmode(bm_normal);