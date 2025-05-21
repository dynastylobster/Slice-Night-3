/// @description Insert description here
// You can write your code in this editor
age += 0.125
if instance_exists(Obj_BgBlackHole) {
	funny_alpha = (1 - ((distance_to_point(Obj_BgBlackHole.x,Obj_BgBlackHole.y))/40 )  )
	if x < Obj_BgBlackHole.x
	{image_index = 0 } else {image_index = 1;}
	
		x = Obj_BgBlackHole.x + sin(age/40) * 250
		y = Obj_BgBlackHole.y
	if x > camera_get_view_x(view_camera[0])+454 {
			sprite_index = Spr_VoidWorld_s
			depth = Obj_BgBlackHole.depth+50
	} if x < camera_get_view_x(view_camera[0])-27 or age = 0 {
			sprite_index = Spr_VoidWorld
			depth = Obj_BgTabuli.depth+6
	}
	
	if sprite_index = Spr_VoidWorld {
	if place_meeting(x,y,Obj_BgBlackHole) {
		//layer_set_visible(layer_get_id("bg_Still3"),true)
		//layer_set_visible(layer_get_id("Bg_Still2"),true)
	} else {
		//layer_set_visible(layer_get_id("bg_Still3"),false)
		//layer_set_visible(layer_get_id("Bg_Still2"),true)
		}
	}
	
	}