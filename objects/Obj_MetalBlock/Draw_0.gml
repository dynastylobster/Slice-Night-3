

var heatPercent = (heat / maxHeat);
/*
var color = make_color_rgb(floor(255), floor(255 - (abs(heatPercent) * 255)), floor(255 - (heatPercent * 255)));
image_blend = color;
*/



draw_self();
if heatPercent > 0 {
draw_sprite_ext(sprite_index,2,x,y,image_xscale,image_yscale,image_angle,c_white,heatPercent*4)	
}
draw_sprite_ext(sprite_index,1,x,y,image_xscale,image_yscale,image_angle,c_white,heatPercent)