/// @description Insert description here
// You can write your code in this editor
if active {
	if image_alpha = 0 {
		audio_play_sound(Snd_SliceReverse,0,0,global.SFXvolume*2,0,0.01)	
	}
		image_alpha += 0.005
	}

if image_alpha >= 1 {
	room_goto(destination_room);
}