/// @description Insert description here
// You can write your code in this editor
draw_self();
var normaldepth = gpu_get_depth()
if shooting {
	gpu_set_depth(depth+25)
	draw_set_color(c_red)
	gpu_set_blendmode(bm_add)
		draw_line_width(x,y,otherfist.x,otherfist.y,10+bonus)
	gpu_set_blendmode(bm_normal)
	draw_set_color(c_white)
		draw_sprite(Spr_DadFistEffectSprite,age,x,y)
		gpu_set_depth(depth-25)
		draw_line_width(x,y,otherfist.x,otherfist.y,7+bonus)
		gpu_set_depth(normaldepth)
	}