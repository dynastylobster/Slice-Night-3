/// @description Insert description here
// You can write your code in this editor

if sprite_index = Spr_AntiSliceBlock {
		if alarm[0] > 0 {
			if alarm[0] < 60 and alarm[0] > 30 and age%4 > 0.5 then draw_self()
			if alarm[0] < 30 and age*2%2 < 0.25 then draw_self()
			if alarm[0] > 60 draw_self()
		}
		if alarm[0] > 145 {
			gpu_set_blendmode(bm_add)
			draw_self();
			gpu_set_blendmode(bm_normal)
		}
		if alarm[0] > 60 {
			gpu_set_blendmode(bm_add)
			draw_sprite_ext(Spr_AntiSliceBlockEmpty,0,x,y,image_xscale,image_yscale,0,c_white,1);
			draw_sprite_ext(Spr_AntiSliceBlockEmpty,0,x,y,image_xscale,image_yscale,0,c_white,1);
			gpu_set_blendmode(bm_normal)	
		}
		
	}
if sprite_index = Spr_AntiSliceBlockEmpty {
draw_self();
}