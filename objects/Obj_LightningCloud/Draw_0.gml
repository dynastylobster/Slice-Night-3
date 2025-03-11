if (lc > 0 && warning == 0) {
	
	gpu_set_blendmode(bm_add)
	for (i = y; i < room_height+64 ; i+=32) {
		draw_sprite_ext(Spr_CloudLighting,age/7.5,x-2,i,1,1,270,c_white,1);	
	}
	gpu_set_blendmode(bm_normal)
	
	//draw_line_color(x, y, x, y + 2000, c_yellow, c_yellow);

}
if (warning > 0) {
	image_index = 1;
	//draw_line_color(x, y, x, y + 2000, c_red, c_red);
		var drawy = clamp(y+32,camera_get_view_y(view_camera[0])+5,room_height)
	draw_sprite(Spr_DeathBlockWarning,age/4,x-8,drawy)
	warning--;
} else { image_index = 0; }
draw_self()