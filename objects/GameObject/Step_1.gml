/// @description Insert description here
// You can write your code in this editor
 //cam_x = camera_get_view_x(view_camera[0])
 //cam_y = camera_get_view_y(view_camera[0])
if global.character = "Jester" and !global.cardlyunlocked 
{global.costume = "Billy (Fox)" ;global.character = "Human"; }
 
 if instance_exists(Obj_Billy) {
 cam_x = clamp(Obj_Billy.x-213,0,room_width-426)
cam_y = clamp(Obj_Billy.y-120,0,room_height-240)
 }