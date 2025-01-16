/// @description Insert description here
// You can write your code in this editor

if place_meeting(x,y,Obj_EnemyHurtEffect) {
gpu_set_blendmode(bm_add)
draw_self();
}
draw_self();
if !StillJump {
draw_sprite_ext(Spr_CrawlHopperRed,image_index,x,y,image_xscale,image_yscale,image_angle,c_white,timer/170)
}
if alarm[0] < 45 {
	draw_sprite_ext(Spr_CrawlHopperRed,2,x,y,image_xscale,image_yscale,image_angle,c_white,1)
}

gpu_set_blendmode(bm_normal)