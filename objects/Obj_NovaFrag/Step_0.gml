/// @description Insert description here
// You can write your code in this editor

if !global.paused {
y+= 2;
x+= xspeed
if y > room_height then instance_destroy();

if place_meeting(x,y,[Obj_Wall,autoTileCol,Obj_Slope]) {
					instance_create_depth(x+8,y,depth,Obj_ShrapnelBerry)
			instance_create_depth(x-2,y-8,depth,Obj_ShrapnelBerry)
			instance_create_depth(x+2,y-8,depth,Obj_ShrapnelBerry)
			instance_create_depth(x,y,depth,Obj_GemCollectEffect)
			instance_create_depth(x-8,y,depth,Obj_ShrapnelBerry)
			instance_destroy();
			audio_play_sound(Snd_BlockBreak,0,0,global.SFXvolume*2,0,0.75)
}

if instance_exists(Obj_Billy) {
		if distance_to_object(Obj_Billy) < 75 Obj_Billy.heat++
		if distance_to_object(Obj_Billy) < 60 Obj_Billy.heat+=3
		if distance_to_object(Obj_Billy) < 20 Obj_Billy.heat++
		if distance_to_object(Obj_Billy) < 10 Obj_Billy.heat+=6
	}
	
}