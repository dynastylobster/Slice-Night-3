/// @description Insert description here
// You can write your code in this editor

CheckOnscreen();

if image_index >= 4 and image_index < 5
{
if !audio_is_playing(Snd_Slice) {
	if onscreen audio_play_sound(Snd_Slice,0,0,1,0,2)
	}
}

if image_index >= 5 
{
	if !place_meeting(x,y,Obj_DebrisPlatform) {
		if onscreen audio_play_sound(Snd_BlockBreak,0,0,0.25,0,1)
		if onscreen audio_play_sound(Snd_land,0,0)
		if onscreen audio_play_sound(Snd_land,0,0,1,0,1.3)
		instance_create_depth(x,y,depth-100,Obj_EnemyFlameSpark) 
		if single {
			instance_create_depth(x+SpawnDirection,y+10,depth-100,Obj_DebrisPlatform);	
		} else {
	instance_create_depth(x+4,y+10,depth-100,Obj_DebrisPlatform);	
	instance_create_depth(x-4,y+10,depth-100,Obj_DebrisPlatform);	
		}
		}
}

image_speed = !global.paused;