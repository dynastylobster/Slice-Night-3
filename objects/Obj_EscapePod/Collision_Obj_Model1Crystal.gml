/// @description Insert description here
// You can write your code in this editor
glow_alpha = 1;
instance_create_depth(x,y,depth,Obj_GemCollectEffect)
audio_play_sound(Snd_DashCrystal,0,0,global.SFXvolume*2,0,1);
audio_play_sound(Snd_DashCrystal,0,0,global.SFXvolume*2,0,0.5);
audio_play_sound(Snd_VoidLazer,0,0,global.SFXvolume/2,0,1.2)
alarm[0] = 160
with(other) {
instance_destroy();	
}