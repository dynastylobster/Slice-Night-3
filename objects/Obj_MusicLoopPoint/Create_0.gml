/// @description Insert description here
// You can write your code in this editor
audio_stop_sound(global.music)
global.music = -4
audio_stop_all();
creation_room = room
audio_play_sound(Intro,0,false,global.musicvolume);	