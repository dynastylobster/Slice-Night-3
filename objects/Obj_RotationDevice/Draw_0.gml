/// @description Insert description here
// You can write your code in this editor
draw_sprite_ext(Spr_BlueShift,0,camera_get_view_x(view_camera[0]),camera_get_view_y(view_camera[0]),1,1,0,c_white,alpha)
draw_sprite_ext(Spr_BlueShift,0,camera_get_view_x(view_camera[0]),camera_get_view_y(view_camera[0]),1+random_range(0.01,0.02),1+random_range(0.01,0.02),0,c_white,alpha/2)
draw_sprite_ext(sprite_index,0,x,y,1,1,image_angle*1.6,c_white,1)
draw_sprite_ext(sprite_index,1,x,y,1,1,image_angle,c_white,1)
draw_sprite_ext(sprite_index,2,x,y,1,1,0,c_white,1)