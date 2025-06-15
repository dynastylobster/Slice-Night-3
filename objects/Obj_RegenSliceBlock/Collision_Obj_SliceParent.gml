/// @description Insert description here
// You can write your code in this editor
if !dead {
image_index = 1.5
alarm[0] = 8
alarm[1] = 120
if other.done_slicing = false {
audio_play_sound(Snd_BlockBreak2,0,0,global.SFXvolume,0,random_range(0.9,1.1))
audio_play_sound(Snd_BlockBreak,0,0)

repeat(10) {
instance_create_layer(x+16,y+16,layer,Obj_SliceBlockParticle)	
}
}
with (other) {
done_slicing = true	
}
}