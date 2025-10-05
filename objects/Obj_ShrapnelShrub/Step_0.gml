/// @description Insert description here
// You can write your code in this editor

age += 0.25
if age > 999 age = 0


if image_index = 0 {
	if instance_exists(Obj_Billy) {
		
		if distance_to_object(Obj_Billy) > 70 and distance_to_object(Obj_Billy) <= 100 {
		draw_x = x + sin(age*8)/2
		} else draw_x = x
		
		if distance_to_object(Obj_Billy) <= 70 and pretimer = -1 {
			pretimer = 12;
			}
		
		if distance_to_object(Obj_Billy) <= 70 and pretimer = 0 {
			
			audio_play_sound(Snd_BerryShoot,0,0)
			instance_create_depth(x+8,y,depth,Obj_ShrapnelBerry)
			instance_create_depth(x-2,y-8,depth,Obj_ShrapnelBerry)
			instance_create_depth(x+2,y-8,depth,Obj_ShrapnelBerry)
			instance_create_depth(x-8,y,depth,Obj_ShrapnelBerry)
			instance_create_depth(x,y,depth-1,Obj_EnemyHurtEffect);
			depth -=10
			image_index = 1
			posttimer = 8;
			}
			
		}
	}

if pretimer > 0 pretimer--;
if posttimer > 0 posttimer--;