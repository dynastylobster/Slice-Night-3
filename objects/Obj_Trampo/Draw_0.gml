/// @description Insert description here
// You can write your code in this editor

if image_index = 2 {
		draw_x = (random_range(x-1,x+1));
	} else draw_x = x;

if place_meeting(x,y,Obj_EnemyHurtEffect) {
gpu_set_blendmode(bm_add)
draw_sprite_ext(sprite_index,image_index,draw_x,y,facing,image_yscale,image_angle,c_white,1);
}
draw_sprite_ext(sprite_index,image_index,draw_x,y,facing,image_yscale,image_angle,c_white,1);

gpu_set_blendmode(bm_normal)
