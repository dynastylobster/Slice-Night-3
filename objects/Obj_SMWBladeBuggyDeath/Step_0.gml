/// @description Insert description here
image_speed = 0
image_index = 1
funnierx = camera_get_view_x(view_camera[0])
// You can write your code in this editor
CheckOnscreen()
if !global.paused 
{
if yspeed < 16{
yspeed+= grav 
}
y += yspeed
}

x = funnyx + funnierx/funnyx

if y > room_height {
yspeed = 3


if !onscreen and y > room_height{
instance_create_depth(x,starty,depth,Obj_SMWBladeBuggy)
instance_destroy();
}



}