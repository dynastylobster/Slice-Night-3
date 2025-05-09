/// @description Insert description here
// You can write your code in this editor

CheckOnscreen();



if !global.paused {
	if onscreen {
if alarm[1] = 60 or alarm[1] = 40 or alarm[1] = 15 {
		audio_play_sound(Snd_Land,0,0,global.SFXvolume*0.25,0,1.1)
	}
	}
	
draw_x = x+irandom_range(-1,1);

if place_meeting(x,y-2,Obj_Billy) {
		
		if Obj_Billy.grounded {
				
				if instance_exists(Obj_ShiftPillarCopper) {
					
				with(Obj_ShiftPillarCopper) {
					
				if image_yscale <= 0 {
					y += 1.5	
				}
					
				if !place_meeting(x,y-2,Obj_Billy)
				{
						y -= (sign(image_yscale)*1.5)
					}
						
				}
		}
						y+= 1.5
				
		}
		
	} else {
		if y > starty y-= 0.333
		if y < starty y+= 0.333
	}
}

if instance_exists(Obj_Billy) {
		if distance_to_object(Obj_Billy) < 4 {
			if zapping HitPlayer();	
		}
	}
	
if !onscreen y = starty

if global.paused {
		if alarm[1] != -4 alarm[1]++
		if alarm[2] != -4 alarm[2]++
	}