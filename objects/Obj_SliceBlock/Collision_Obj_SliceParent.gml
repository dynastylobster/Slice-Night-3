/// @description Insert description here
// You can write your code in this editor

if !place_meeting(x,y,Obj_BossLockBlock) {
image_index = 1
alarm[0] = 8
if other.done_slicing = false {
audio_play_sound(Snd_BlockBreak,0,0)
repeat(10) {
instance_create_layer(x+16,y+16,layer,Obj_SliceBlockParticle)	
}
}
with (other) {
done_slicing = true	
}
depth +=50
}

if instance_exists(Obj_Train) {
		if distance_to_object(Obj_Train) < 48 
		alarm[0] = 1
	}