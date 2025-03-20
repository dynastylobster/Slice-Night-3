/// @description Insert description here
// You can write your code in this editor
if x > camera_get_view_x(view_camera[0]) and x < camera_get_view_x(view_camera[0])+426 {
		onscreen = true;
	} else onscreen = false;
	
	if onscreen {
instance_create_layer(x+32,y+32,layer,Obj_NovaFrag)
	}

alarm[0] = Delay_in_seconds*60