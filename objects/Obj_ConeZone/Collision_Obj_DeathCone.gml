/// @description Insert description here
// You can write your code in this editor
if !hit {
hp--
repeat(5) {
instance_create_depth(x+random_range(-3,3),y,depth-10,Obj_EnemyFlameSpark)
}
audio_play_sound(Snd_EnemyExplode,0,0,global.SFXvolume*1.5,0,0.9)
audio_play_sound(Snd_BlockBreak,0,0,global.SFXvolume*0.9,0,0.8)
hit = true;
alarm[0] = 28
}
instance_create_depth(x,lerp(y,other.y,0.5),depth-50,Obj_BerryBoom);

with(other) {
		instance_destroy();
	}