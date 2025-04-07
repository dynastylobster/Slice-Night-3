/// @description Insert description here
// You can write your code in this editor
CheckOnscreen();
grounded = false;
if onscreen {
audio_play_sound(Snd_Jump,0,false,global.SFXvolume*2,0,0.7)
}
yspeed = jumpspeed;
y-= 6
