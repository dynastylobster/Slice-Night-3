/// @description Insert description here
// You can write your code in this editor
if place_meeting(x,y,Obj_EnemyHurtEffect) {
gpu_set_blendmode(bm_add)
draw_self();
}
draw_self();

gpu_set_blendmode(bm_add) 
if alarm[0] < 30 and alarm[0] > 0 {
	draw_set_alpha(0.25);
	draw_set_color(c_red);
		draw_circle(x,y,32,false);
		draw_set_color(c_white);
		draw_set_alpha(1)
	}

gpu_set_blendmode(bm_normal)
