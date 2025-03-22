/*if drawing and !global.paused {
depth = layer_get_depth(layer_get_id("GameObjectLayer"))-200
} else {
	depth = layer_get_depth(layer_get_id("Instances_1"))
} */

if place_meeting(x,y,Obj_Billy) {
if !drawing draw_sprite(Spr_UpArrow,age,x,y-14)
}



if image_index = 15 {
		sprite_index = Spr_NPCStrawby
	}

if drawing{
depth = layer_get_depth(layer_get_id("GameObjectLayer"))-200
} else {
	depth = layer_get_depth(layer_get_id("Instances_1"))
}


draw_set_halign(fa_left)
draw_set_color(c_white) 
//depth = layer_get_id("Instances_1")

if walled draw_set_color(#2020FF)

depth = layer_get_depth(layer_get_id("Instances_1"))+25
draw_self();

if sprite_index = Spr_NPCStrawby {
sprite_index = Spr_NPC 
image_index = 15
}

if drawing {
depth = layer_get_depth(layer_get_id("GameObjectLayer"))
draw_sprite(Spr_NPCText,image_index,camera_get_view_x(view_camera[0]),camera_get_view_y(view_camera[0]))	
var text_x = camera_get_view_x(view_camera[0])+214
var text_y = camera_get_view_y(view_camera[0])+5
draw_set_font(UndertaleFont)
draw_set_halign(fa_center) 
draw_set_color(c_black) 

	if (line < array_length(textToSay)) {
	draw_set_color(c_black) 
	draw_text(text_x, text_y+1, string(textToSay[line]));	
		draw_set_color(c_white) 
	draw_text(text_x, text_y, string(textToSay[line]));	
	} else {
		drawing = false;
	line = 0;
	}
}