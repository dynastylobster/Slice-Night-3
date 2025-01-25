/// @description Insert description here
// You can write your code in this editor
y = camera_get_view_y(view_camera[0]) + irandom_range(-100,-20)
x = irandom_range(camera_get_view_x(view_camera[0]),camera_get_view_x(view_camera[0])+425)
if instance_exists(Obj_Billy) {
if homing x = Obj_Billy.x
}
grav = 0.0125
yspeed = 0;
max_yspeed = 3;