/// @description Insert description here
// You can write your code in this editor
draw_sprite(sprite_index,image_index,draw_x,draw_y)

if place_meeting(x,y,Obj_Wall) {
draw_set_color(#000088)
draw_text(x,y-50,"RIDE ONTOP OF SOMETHING WITH NO REGARD\nFOR OUR OWN PERSONAL SAFETY!!!!")
draw_set_color(#00FF90)
draw_text(x-1,y-51,"RIDE ONTOP OF SOMETHING WITH NO REGARD\nFOR OUR OWN PERSONAL SAFETY!!!!")
/*
draw_set_color(#000088)
draw_text(x,y-50,"SPOILER-FREE PLACEHOLDER TEXT SO I DONT\nGIVE AWAY A MOMENT FROM AN IMPORTANT CHARACTER!!!")
draw_set_color(#00FF90)
draw_text(x-1,y-51,"SPOILER-FREE PLACEHOLDER TEXT SO I DONT\nGIVE AWAY A MOMENT FROM AN IMPORTANT CHARACTER!!!")
*/
}

draw_set_color(c_white)

if x > room_width {
depth = 0
alpha+= 0.012
draw_set_alpha(alpha)
draw_set_color(c_black)
draw_rectangle(camera_get_view_x(view_camera[0]),0,8500,300,false)
draw_set_color(c_white)
draw_set_alpha(1)
}