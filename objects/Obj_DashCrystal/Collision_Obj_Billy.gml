/// @description Insert description here
// You can write your code in this editor
if active {
instance_create_layer(x,y,layer,Obj_EnemyHurtEffect)
audio_play_sound(Snd_DashCrystal,0,0,global.SFXvolume*3,0,1)
other.dashes += 1

active = false
}