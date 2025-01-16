/// @description Insert description here
// You can write your code in this editor
draw_self();
gpu_set_blendmode(bm_add)
var _x = x 
while _x < x+sprite_width {
if global.music = Snd_SlicerOfThe7DreamsMusic and room != Level_Boat3 {
draw_sprite(Spr_WaterWavesOrange,image_index,_x,y);
} else draw_sprite(Spr_WaterWaves,image_index,_x,y);
_x += 16
}
gpu_set_blendmode(bm_normal)