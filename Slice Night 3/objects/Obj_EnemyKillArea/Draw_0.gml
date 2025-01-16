/// @description Insert description here
// You can write your code in this editor
draw_self();
draw_set_color(c_white)
if global.music = Snd_LightToTheTempleMusic then draw_set_color(c_black);
draw_rectangle(x,y,x+sprite_width,y+sprite_height,true);
draw_rectangle(x+1,y+1,x+sprite_width-1,y+sprite_height-1,true);
draw_set_color(c_white)