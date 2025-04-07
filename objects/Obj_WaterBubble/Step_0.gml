/// @description Insert description here
// You can write your code in this editor
age += 0.125

wavey_x = x+sin(age*4)*waveyness 
x += xspeed
y += yspeed
yspeed += grav

if y < camera_get_view_y(view_camera[0]) - 100 then instance_destroy();
