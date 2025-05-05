/// @description Insert description here
// You can write your code in this editor
if sprite_index = Spr_GoalBoxSparkle {
		draw_set_alpha(0.8)
		gpu_set_blendmode(bm_add)
	}

if instance_exists(Obj_Dad) {
	gpu_set_blendmode(bm_add)	
}

draw_self()

gpu_set_blendmode(bm_normal)
draw_set_alpha(1)