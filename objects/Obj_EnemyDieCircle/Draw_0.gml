/// @description Insert description here
// You can write your code in this editor
gpu_set_blendmode(bm_add)
if age < 4 {
	draw_sprite(Spr_WalljumpEffectSprite,0,x,y)	
}
draw_set_alpha(alpha)
draw_set_color(GameObject.slice_color)
draw_circle(x,y,rad*0.85,false)
draw_circle(x,y,rad,false)
draw_set_alpha(1)
draw_set_color(c_white)
gpu_set_blendmode(bm_normal)