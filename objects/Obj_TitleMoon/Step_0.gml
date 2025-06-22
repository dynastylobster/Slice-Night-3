/// @description Insert description here
// You can write your code in this editor

if !instance_exists(Obj_Billy) {
if y > room_height+30 image_index += 1

if y < -60 {
		xspeed = random_range(-0.5,0.5)
		x = random_range(30,room_width-30)
		y = room_height+31
	}
} else {
	if y > camera_get_view_y(view_camera[0])+260 image_index += 1

if y < camera_get_view_y(view_camera[0])-300 {
		xspeed = random_range(-0.5,0.5)
		x = random_range(camera_get_view_x(view_camera[0]-32),camera_get_view_x(view_camera[0]+458))
		y = random_range(room_height+31,room_height+160)
	}
	
}
	
y-= 0.5
x+= xspeed