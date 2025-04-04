/// @description Insert description here
// You can write your code in this editor
if other.object_index = Obj_FlameSlice {
		with(other) {instance_destroy()}
	}
prevHp = hp;
if other.done_slicing = false {
audio_play_sound(Snd_Dink,0,0,global.SFXvolume);
other.done_slicing = true
}

 prevHP = hp {
if other.done_slicing and !instance_exists(Obj_SliceDown) {
if instance_exists(Obj_Billy) {
	
	if Obj_Billy.y > y-13 {
instance_create_depth(x,y,depth,Obj_EnemyHurtEffect)
instance_create_layer(x+2,y,layer,Obj_EnemyFlameSpark)
instance_create_layer(x-2,y,layer,Obj_EnemyFlameSpark)

if !StillJump
{
if Obj_Billy.x >= x then dir = -1
if Obj_Billy.x < x then dir = 1
}

HitAnyone();

	}
}
}

}