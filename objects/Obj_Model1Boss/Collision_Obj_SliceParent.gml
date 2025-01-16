/// @description Insert description here
// You can write your code in this editor
if other.object_index = Obj_SliceSide {
if other.done_slicing = false {
instance_create_depth(x,y,depth,Obj_EnemyHurtEffect)
hp -= 0.5
audio_play_sound(Snd_EnemyExplode,0,0,global.SFXvolume,0,random_range(0.8,1))
}
}

if other.object_index = Obj_SliceDown {
	if yspeed < 0 yspeed = 0	
}

other.done_slicing = true

