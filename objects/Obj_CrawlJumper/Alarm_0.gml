/// @description Insert description here
// You can write your code in this editor
if onscreen {
audio_play_sound(Snd_FishJump,0,0,5*global.SFXvolume);
}
yspeed = -jumpspeed
instance_create_layer(x,y+16,layer,Obj_FishBubble);
alarm[0] = 180