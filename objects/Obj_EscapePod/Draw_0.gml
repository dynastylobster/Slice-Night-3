/// @description Insert description here
// You can write your code in this editor
draw_self();
draw_sprite_ext(sprite_index,1,x,y,1,1,0,c_white,glow_alpha);

draw_set_color(c_black)
draw_set_alpha(image_xscale/100)
	draw_rectangle(0,0,500,500,false)
draw_set_alpha(1)
draw_set_color(c_white)

if billyime {
		if !instance_exists(Obj_EscapePodInside) {
				instance_create_depth(0,0,depth-4,Obj_EscapePodInside)
			}
	}