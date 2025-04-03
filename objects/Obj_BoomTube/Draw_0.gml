/// @description Insert description here
// You can write your code in this editor
if global.costume = "Billy (SMW)" {
		sprite_index = Spr_BoomTubeSMW
	}
if place_meeting(x,y,Obj_EnemyHurtEffect) {
gpu_set_blendmode(bm_add)
draw_sprite_ext(sprite_index,image_index,xshift,y,image_xscale,image_yscale,0,c_white,1);
}

draw_sprite_ext(sprite_index,image_index,xshift,y,image_xscale,image_yscale,0,c_white,1);

gpu_set_blendmode(bm_normal);