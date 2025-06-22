/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
if active {

alarm[1] = 5
audio_play_sound(Snd_Glass,0,0,global.SFXvolume*2,0,1);
event_inherited();
if instance_exists(Obj_EnemyHurtEffect) {
with(Obj_EnemyHurtEffect) {
		instance_destroy();
	}
}

active = false;
}
