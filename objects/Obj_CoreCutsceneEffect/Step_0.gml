/// @description Insert description here
// You can write your code in this editor
if x < camera_get_view_x(view_camera[0]) {
		x = startx
		image_alpha = 0
		xspeed = 0
	}
	
	if image_alpha < 1 image_alpha += 0.0125
	
	if xspeed < 3 {
	xspeed += 0.0125
	}
	
	x -= xspeed