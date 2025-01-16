/// @description Insert description here
// You can write your code in this editor
if drawing and !global.paused {
depth = layer_get_depth(layer_get_id("GameObjectLayer"))-200
} else {
	depth = layer_get_depth(layer_get_id("Instances_1"))
}

if place_meeting(x,y,Obj_Billy) {
if !drawing draw_sprite(Spr_UpArrow,age,x,y-14)
}

if drawing {
draw_sprite(Spr_NPCText,image_index,camera_get_view_x(view_camera[0]),camera_get_view_y(view_camera[0]))	
var text_x = camera_get_view_x(view_camera[0])+214
var text_y = camera_get_view_y(view_camera[0])+5
draw_set_font(UndertaleFont)
draw_set_halign(fa_center) 
draw_set_color(c_black) 
if !plural {
	draw_set_color(c_white) 
	var lines = [text_0, text_1, text_2, text_3, text_4, text_5];
	if (lines[line] != "noone") {
	draw_text(text_x, text_y, string(lines[line]));	
	} else {
	line = 0;
	}


/*draw_set_color(c_white) 
if text_0 != "noone" {	
	draw_text(text_x-1,text_y-1,string(text_0));
}
if text_1 != "noone" {	
	draw_text(text_x-1,text_y+11,string(text_1));
}
if text_2 != "noone" {	
	draw_text(text_x-1,text_y+22,string(text_2));
}
if text_3 != "noone" {	
	draw_text(text_x-1,text_y+33,string(text_3));
}
if text_4 != "noone" {	
	draw_text(text_x-1,text_y+44,string(text_4));
}
if text_5 != "noone" {	
	draw_text(text_x-1,text_y+55,string(text_5));
}*/
}
draw_set_color(c_white) 
if plural {
	if image_index = character_1 {
		if text_0 != "noone" {	
	draw_text(text_x-1,text_y-1,string(text_0));
		}
		if text_1 != "noone" {	
		draw_text(text_x-1,text_y+11,string(text_1));
		}
		if text_2 != "noone" {	
		draw_text(text_x-1,text_y+22,string(text_2));
		}
		
	} if image_index = character_2 {
		if text_3 != "noone" {	
	draw_text(text_x-1,text_y+33,string(text_3));
		}
		if text_4 != "noone" {	
		draw_text(text_x-1,text_y+44,string(text_4));
		}
		if text_5 != "noone" {	
		draw_text(text_x-1,text_y+55,string(text_5));
		}
	}
}



}


draw_self();
draw_set_halign(fa_left)

//depth = layer_get_id("Instances_1")