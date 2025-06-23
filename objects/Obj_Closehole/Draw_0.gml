/// @description Insert description here
// You can write your code in this editor

//draw_sprite_tiled(Bg_TectonicFuryStars,0,camera_get_view_x(view_camera[0])+sky_x,camera_get_view_y(view_camera[0])+sky_y)

draw_sprite_ext(sprite_index,0,x,y,1*size,1*size,image_angle,c_white,1)
draw_set_circle_precision(40)
draw_set_color(#00009F)
if layer_exists(layer_get_id("Bg_BlackHole_1")) {
if layer = layer_get_id("Bg_BlackHole_1") {
		draw_set_color(#9F0000)
}
}
draw_circle(x,y,145*size,false)
draw_set_color(c_black)
draw_circle(x,y,136*size,false)
draw_set_color(c_white)
gpu_set_blendmode(bm_add)
draw_set_alpha(0.25)

if !going_away {
draw_sprite_ext(Bg_Closehole_front,0,camera_get_view_x(view_camera[0])-1+draw_x3,camera_get_view_y(view_camera[0]),1*size,1*size,0,c_white,1)
draw_sprite_ext(Bg_Closehole_front,0,camera_get_view_x(view_camera[0])-1+draw_x2,camera_get_view_y(view_camera[0]),1*size,1*size,0,c_white,1)
}
draw_set_alpha(1)

if !going_away {
draw_sprite_ext(Bg_Closehole_front,0,camera_get_view_x(view_camera[0])-1-floor(draw_x),camera_get_view_y(view_camera[0]),1*size,1*size,0,c_white,1)
}
gpu_set_blendmode(bm_normal)
if layer_exists(layer_get_id("Bg_BlackHole_1")) {
if layer = layer_get_id("Bg_BlackHole_1") {
	if !going_away {
draw_sprite_ext(Bg_Closehole_front_red,0,camera_get_view_x(view_camera[0])-1+draw_x3,camera_get_view_y(view_camera[0]),1*size,1*size,0,c_white,1)
draw_sprite_ext(Bg_Closehole_front_red,0,camera_get_view_x(view_camera[0])-1+draw_x2,camera_get_view_y(view_camera[0]),1*size,1*size,0,c_white,1)
}
draw_set_alpha(1)
if !going_away {
draw_sprite_ext(Bg_Closehole_front_red,0,camera_get_view_x(view_camera[0])-1-floor(draw_x),camera_get_view_y(view_camera[0]),1*size,1*size,0,c_white,1)
}
}

}

