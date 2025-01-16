/// @description Insert description here
// You can write your code in this editor
if room != Level_Boss3 and room != Level_Sun4 {
if exist > 0 then instance_destroy();
}

if !global.paused {
if place_meeting(x,y,Obj_Billy) {
	audio_stop_sound(global.music)
	} else 
	if !audio_is_playing(global.music) {
	audio_play_sound(global.music,0,true)
	}
}

if room!= creation_room and !global.paused {
	if !audio_is_playing(global.music) {
	audio_play_sound(global.music,0,true)
	}
	instance_destroy();
}