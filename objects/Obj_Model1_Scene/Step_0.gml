/// @description Insert description here
// You can write your code in this editor



if instance_exists(Obj_Billy) {
	if Obj_Billy.x < x then image_xscale = -1
	
	if !next {
if distance_to_object(Obj_Billy) <= 200 {
	if !done audio_play_sound(Snd_Slice,0,0)
		y+= 5
		x-= 3
		done = true
	}
	}
	if next {
		if distance_to_object(Obj_Billy) <= 200 {
		if !done audio_play_sound(Snd_Slice,0,0)
		audio_stop_sound(global.music);
		global.music = Snd_Silence;
		speed = 4
		direction = point_direction(x,y,Obj_Billy.x,Obj_Billy.y)
		done = true
		}
	}
}