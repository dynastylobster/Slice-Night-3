/// @description Insert description here
// You can write your code in this editor
if !place_meeting(x,y,Obj_SliceBackAttack) {
gpu_set_blendmode(bm_add)
draw_self()
gpu_set_blendmode(bm_normal)
} else {
	draw_set_color(c_black)
	draw_self()
	draw_set_color(c_white)
}