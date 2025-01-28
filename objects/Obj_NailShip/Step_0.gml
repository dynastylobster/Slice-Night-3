/// @description Insert description here
// You can write your code in this editor
xspeed = lengthdir_x(0.125,angle)
yspeed = lengthdir_y(0.125,angle)

newx += xspeed
newy += yspeed

x = camera_get_view_x(view_camera[0])+startx + newx
y = camera_get_view_y(view_camera[0])+starty + newy