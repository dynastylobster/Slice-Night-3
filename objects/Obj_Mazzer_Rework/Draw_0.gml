if (constant || lasering) {
	if (age % 6 == 0) {
		image_index = !image_index;
	}
	for (var o = 0; o < 12; o++) {
		draw_line_color(x + o, y + o, x + ((dir == "Left" ? -10000 : 10000) - xbonA[o]) + o, y + ((dir == "Up" ? -10000 : 10000) - ybonA[o]) + o, c_red, c_white);
	}
}

if warning and !onscreen{
		if instance_exists(Obj_Billy) {
			if Obj_Billy.x < x then draw_sprite(Spr_DeathBlockWarning,age/5,camera_get_view_x(view_camera[0])+406,y);	
			if Obj_Billy.x > x then draw_sprite(Spr_DeathBlockWarning,age/5,camera_get_view_x(view_camera[0])+8,y);	
		}
	}

// Inherit the parent event
depth = 550;
event_inherited();