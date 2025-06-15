/// @description Insert description here
// You can write your code in this editor
if HP > 0 {
if !place_meeting(x,y,Obj_BossLockBlock) {
image_index -=1
alarm[0] = 8
depth += 50
if other.done_slicing = false {
HP-=1
audio_play_sound(Snd_BlockBreak2,0,0,global.SFXvolume,0,random_range(0.9,1.1))
audio_play_sound(Snd_BlockBreak,0,0)
repeat(4) {
instance_create_depth(x+16,y+16,layer_get_depth("Instances_1"),Obj_SliceBlockParticle)	
}

}

with (other) {
done_slicing = true	
}

}
}