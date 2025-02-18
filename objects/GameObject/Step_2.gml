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
  
   if layer_exists(layer_get_id("Bg_1"))
 {
 layer_x(layer_get_id("Bg_1"),camera_get_view_x(view_camera[0])/2);
  layer_y(layer_get_id("Bg_1"),camera_get_view_y(view_camera[0])/0.8);
  
  if room = Level_Feild {
	    layer_y(layer_get_id("Bg_1"),(camera_get_view_y(view_camera[0])/0.8) - (camera_get_view_x(view_camera[0])) / 32 );
  }
  
 }
 
 if layer_exists(layer_get_id("Bg_2"))
 {
 layer_x(layer_get_id("Bg_2"),camera_get_view_x(view_camera[0])/4);
  layer_y(layer_get_id("Bg_2"),camera_get_view_y(view_camera[0])/0.94);
 }
 
    _menux = camera_get_view_x(view_camera[0])+213
	_menuy = camera_get_view_y(view_camera[0])+80