/// @description Insert description here
// You can write your code in this editor
xspeed = lengthdir_x(0.15,angle)
yspeed = lengthdir_y(0.15,angle)

newx += xspeed
newy += yspeed

x = camera_get_view_x(view_camera[0])+startx + newx
y = camera_get_view_y(view_camera[0])+starty + newy

while x > camera_get_view_x((view_camera[0]))+500 {
	//starty =camera_get_view_y((view_camera[0]))
	newx = -390
	//startx = camera_get_view_x((view_camera[0]))
	newy = 100
	y = starty+ newy
	x = startx+ newx
	}
	
if x < camera_get_view_x(view_camera[0])+213 {
image_index = 0	
} else image_index = 1;