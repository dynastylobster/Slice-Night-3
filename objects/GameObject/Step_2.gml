/// @description Insert description here
// You can write your code in this editor
 if layer_exists(layer_get_id("Bg_still"))
 {
 layer_x(layer_get_id("Bg_still"),camera_get_view_x(view_camera[0]));
  layer_y(layer_get_id("Bg_still"),camera_get_view_y(view_camera[0]));
if room = Level_Feild {
	  layer_y(layer_get_id("Bg_still"),camera_get_view_y(view_camera[0])- ( (camera_get_view_x(view_camera[0])) / 16 ) )
}
 }
 
 
 if !instance_exists(Obj_TrainBossController) {
   if layer_exists(layer_get_id("Bg_1"))
 {
 layer_x(layer_get_id("Bg_1"),camera_get_view_x(view_camera[0])/1.25);
  layer_y(layer_get_id("Bg_1"), 16+ clamp((camera_get_view_y(view_camera[0])*0.94),room_height-480,room_height));
  
  if room = Level_Feild {
	    layer_y(layer_get_id("Bg_1"), 100+ clamp((camera_get_view_y(view_camera[0])*0.94),room_height-480,room_height) - (camera_get_view_x(view_camera[0])) / 32 );
  }
  
  
 }
 }
 
 if layer_exists(layer_get_id("Bg_2")) {
 layer_x(layer_get_id("Bg_2"),camera_get_view_x(view_camera[0])/2.5);
  layer_y(layer_get_id("Bg_2"), 72+ clamp((camera_get_view_y(view_camera[0])*0.7),room_height-480,room_height));
  
 }
 
    _menux = camera_get_view_x(view_camera[0])+213
	_menuy = camera_get_view_y(view_camera[0])+80
	
global.current_keys = (global.total_keys-instance_number(Obj_Key));