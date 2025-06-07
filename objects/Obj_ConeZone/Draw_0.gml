/// @description Insert description here
// You can write your code in this editor
draw_sprite(sprite_index,image_index,true_x,y)
if hit {
gpu_set_blendmode(bm_add)
draw_sprite(sprite_index,image_index,true_x+(sin(age*4)*4),y)
gpu_set_blendmode(bm_normal)
}

if !hit {
draw_set_font(global.ConeFont)
draw_set_halign(fa_center)
draw_text(true_x,y+11,string(hp))
draw_set_halign(fa_left)
draw_set_font(UndertaleFont)
}