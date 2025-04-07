/// @description Insert description here
// You can write your code in this editor
if place_meeting(x,y-4,Obj_Billy) {
	if Obj_Billy.grounded = true {
		if broke = false alarm[0] = 45
		if !broke audio_play_sound(Snd_Land,0,0,global.SFXvolume*3,0,1.05)
		image_index =1
		broke = true	
	}
}
	draw_x = x+irandom_range(-1,1);