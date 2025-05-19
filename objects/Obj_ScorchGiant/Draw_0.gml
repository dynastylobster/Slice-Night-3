/// @description Insert description here
// You can write your code in this editor
draw_self();

if place_meeting(x,y,Obj_BgBlackHole) {
	if !infront {
	gpu_set_blendmode(bm_add)
	draw_set_color(c_red)
	draw_circle(Obj_BgBlackHole.x,Obj_BgBlackHole.y,lensingsize,false)
	draw_set_color(c_white)
	} else {
	gpu_set_blendmode(bm_subtract)
	draw_self();
	}
		draw_self();
	gpu_set_blendmode(bm_normal)
}