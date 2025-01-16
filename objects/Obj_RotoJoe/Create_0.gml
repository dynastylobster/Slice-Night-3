/// @description Insert description here
// You can write your code in this editor
if image_index = 1 {
blue = true
image_index = 0;
}
alarm[0] = 3


sprite_index = Spr_RotoJoe;
x+=38
y+=20
draw_x = 0
draw_y = 0

start_x = x-38.5
start_y = y-20.5
point = point_direction(x,y,start_x,start_y)

image_speed = 0
angle = 0
age = 0
if reverse then dir = -1
if slower then _speed = 0.5
if !swinging and !figure8 {
path_start(CirclePath,dir*_speed,path_action_restart,false);
} else {
_speed = _speed * 1.5	
}