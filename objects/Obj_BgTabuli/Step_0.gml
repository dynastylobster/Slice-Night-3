/// @description Insert description here
// You can write your code in this editor
xspeed = lengthdir_x(0.25,angle)
yspeed = lengthdir_y(0.25,angle)

newx += xspeed
newy += yspeed

x = camera_get_view_x(view_camera[0])+startx + newx
y = camera_get_view_y(view_camera[0])+starty + newy

while x > camera_get_view_x((view_camera[0]))+500 {
	y = camera_get_view_y((view_camera[0]))+100
	starty = 0
	newx = camera_get_view_x((view_camera[0]))-90
	startx = 0
	newy = y
	x = newx
	}
	
if x < camera_get_view_x(view_camera[0])+213 {
image_index = 0	
} else image_index = 1;