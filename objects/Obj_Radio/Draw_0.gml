/// @description Insert description here
// You can write your code in this editor
draw_self();

if place_meeting(x,y,Obj_SliceParent) {
	gpu_set_blendmode(bm_add)
	draw_self();
}

gpu_set_blendmode(bm_normal)