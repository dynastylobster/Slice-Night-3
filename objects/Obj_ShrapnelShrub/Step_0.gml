/// @description Insert description here
// You can write your code in this editor
if image_index = 0 {
	if instance_exists(Obj_Billy) {
		if distance_to_object(Obj_Billy) <= 70 {
			audio_play_sound(Snd_BerryShoot,0,0)
			instance_create_depth(x+8,y,layer,Obj_ShrapnelBerry)
			instance_create_depth(x-2,y-8,layer,Obj_ShrapnelBerry)
			instance_create_depth(x+2,y-8,layer,Obj_ShrapnelBerry)
			instance_create_depth(x-8,y,layer,Obj_ShrapnelBerry)
			depth -=10
			image_index = 1
			
			}
			
		}
	}
	