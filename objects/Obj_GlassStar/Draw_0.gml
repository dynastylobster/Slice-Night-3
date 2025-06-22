/// @description Insert description here
// You can write your code in this editor
gpu_set_blendmode(bm_add)
if active{
draw_sprite_ext(sprite_index,5,x,y,1,1,0,c_white,0.75+sin(age/3))
} else {
draw_sprite_ext(sprite_index,5,x,y,1,1,0,c_white,0.25)
}
gpu_set_blendmode(bm_normal)
draw_self();