/// @description Insert description here
// You can write your code in this editor
if global.costume = "Billy (SMW)" {
		if sprite_index = Spr_ParryBall sprite_index = Spr_ParryBallSMW
		if sprite_index = Spr_ParryballBigHitbox sprite_index = Spr_ParryballBigHitboxSMW
	} else if sprite_index != Spr_ParryballBigHitbox sprite_index = Spr_ParryBall
draw_self();
if image_alpha = 1 {
gpu_set_blendmode(bm_add) 
	draw_sprite_ext(Spr_ParryBallDirection,image_index*2,x,y,image_xscale,1,0,c_white,1);
}
gpu_set_blendmode(bm_normal) 