/// @description Insert description here
// You can write your code in this editor
if onscreen {

if other.object_index = Obj_FlameSlice {
	if other.done_slicing = false {
		alarm[0] = 20;
		image_index = 2;
		yspeed = -1
		other.done_slicing = true;
		}
	} else {
	
	if other.done_slicing = false then audio_play_sound(Snd_Dink,0,0,global.SFXvolume);
	alarm[0] = 50
	image_index = 2
	yspeed = -3
	if other.object_index = Obj_SliceDown yspeed = 2;
	if other.x < x xspeed = 3
	if other.x > x xspeed = -3
	other.done_slicing = true;
	}
	
}