/// @description Insert description here
// You can write your code in this editor
if drawing {
depth = layer_get_depth(layer_get_id("GameObjectLayer"))
} else {
	depth = layer_get_depth(layer_get_id("Instances_1"))
}

if place_meeting(x,y,Obj_Billy) {
if !drawing draw_sprite(Spr_UpArrow,age,x,y-14)
}

if drawing and !global.motu {
	if !bothswap {
if !both {
draw_sprite(Spr_NPCMotuBillyText,image_index,camera_get_view_x(view_camera[0]),camera_get_view_y(view_camera[0]))	
}
if both {
	if !global.fem draw_sprite(Spr_NPCMotuBillyTextBoth,image_index,camera_get_view_x(view_camera[0]),camera_get_view_y(view_camera[0]))	
	if global.fem draw_sprite(Spr_NPCMotuBillyTextBothF,image_index,camera_get_view_x(view_camera[0]),camera_get_view_y(view_camera[0]))	
}



	} else {
	if !both {
if !global.fem draw_sprite(Spr_NPCMotuBillyText,image_index,camera_get_view_x(view_camera[0]),camera_get_view_y(view_camera[0]))
if global.fem draw_sprite(Spr_NPCMotuBillyTextF,image_index,camera_get_view_x(view_camera[0]),camera_get_view_y(view_camera[0]))
}
if both {
	if !global.fem draw_sprite(Spr_NPCMotuBillyTextBoth_1,image_index,camera_get_view_x(view_camera[0]),camera_get_view_y(view_camera[0]))	
	if global.fem draw_sprite(Spr_NPCMotuBillyTextBothF_1,image_index,camera_get_view_x(view_camera[0]),camera_get_view_y(view_camera[0]))	
}	
	}

var text_x = camera_get_view_x(view_camera[0])+214
var text_y = camera_get_view_y(view_camera[0])+5
draw_set_font(SliceSans)
draw_set_halign(fa_center) 
draw_set_color(c_black) 
if !plural {
if text_0 != "noone" {	
	draw_text(text_x,text_y,string(text_0));
}
if text_1 != "noone" {	
	draw_text(text_x,text_y+12,string(text_1));
}
if text_2 != "noone" {	
	draw_text(text_x,text_y+23,string(text_2));
}
if text_3 != "noone" {	
	draw_text(text_x,text_y+34,string(text_3));
}
if text_4 != "noone" {	
	draw_text(text_x,text_y+45,string(text_4));
}
if text_5 != "noone" {	
	draw_text(text_x,text_y+56,string(text_5));
}


draw_set_color(c_white) 
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
}
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

if drawing and global.motu {
	if !bothswap {
if !both {
if !global.fem draw_sprite(Spr_NPCMotuBillyText,image_index,camera_get_view_x(view_camera[0]),camera_get_view_y(view_camera[0]))
if global.fem draw_sprite(Spr_NPCMotuBillyTextF,image_index,camera_get_view_x(view_camera[0]),camera_get_view_y(view_camera[0]))
}
if both {
	if !global.fem draw_sprite(Spr_NPCMotuBillyTextBoth,image_index,camera_get_view_x(view_camera[0]),camera_get_view_y(view_camera[0]))	
	if global.fem draw_sprite(Spr_NPCMotuBillyTextBothF,image_index,camera_get_view_x(view_camera[0]),camera_get_view_y(view_camera[0]))	
}

	} else {
	if !both {
if !global.fem draw_sprite(Spr_NPCMotuBillyText,image_index,camera_get_view_x(view_camera[0]),camera_get_view_y(view_camera[0]))
if global.fem draw_sprite(Spr_NPCMotuBillyTextF,image_index,camera_get_view_x(view_camera[0]),camera_get_view_y(view_camera[0]))
}
if both {
	if !global.fem draw_sprite(Spr_NPCMotuBillyTextBoth_1,image_index,camera_get_view_x(view_camera[0]),camera_get_view_y(view_camera[0]))	
	if global.fem draw_sprite(Spr_NPCMotuBillyTextBothF_1,image_index,camera_get_view_x(view_camera[0]),camera_get_view_y(view_camera[0]))	
}	
	}


var text_x = camera_get_view_x(view_camera[0])+214
var text_y = camera_get_view_y(view_camera[0])+5
draw_set_font(SliceSans)
draw_set_halign(fa_center) 
draw_set_color(c_black) 
if !plural {
if text_0B != "noone" {	
	draw_text(text_x,text_y,string(text_0B));
}
if text_1B != "noone" {	
	draw_text(text_x,text_y+12,string(text_1B));
}
if text_2B != "noone" {	
	draw_text(text_x,text_y+23,string(text_2B));
}
if text_3B != "noone" {	
	draw_text(text_x,text_y+34,string(text_3B));
}
if text_4B != "noone" {	
	draw_text(text_x,text_y+45,string(text_4B));
}
if text_5B != "noone" {	
	draw_text(text_x,text_y+56,string(text_5B));
}


draw_set_color(c_white) 
if text_0B != "noone" {	
	draw_text(text_x-1,text_y-1,string(text_0B));
}
if text_1B != "noone" {	
	draw_text(text_x-1,text_y+11,string(text_1B));
}
if text_2B != "noone" {	
	draw_text(text_x-1,text_y+22,string(text_2B));
}
if text_3B != "noone" {	
	draw_text(text_x-1,text_y+33,string(text_3B));
}
if text_4B != "noone" {	
	draw_text(text_x-1,text_y+44,string(text_4B));
}
if text_5B != "noone" {	
	draw_text(text_x-1,text_y+55,string(text_5B));
}
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

depth = layer_get_id("Instances_1")