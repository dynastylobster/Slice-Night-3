/// @description Insert description here
// You can write your code in this editor
if place_meeting(x,y,Obj_EnemyHurtEffect)
{
gpu_set_blendmode(bm_add)
draw_self();
}
draw_self();
gpu_set_blendmode(bm_normal)
if iframes and image_alpha <= 0.6 {
if iframe_timer < 25 {
	draw_sprite(Spr_BerryBoom,0,x,y);
	}
}
if !lockedout {
gpu_set_blendmode(bm_normal)
draw_set_font(SliceSans)
draw_set_color(c_black)
draw_text(x+1,y-31,text)
draw_set_color(#FF0099)
draw_text(x,y-32,text)
draw_set_font(UndertaleFont)
draw_set_color(c_white)
}