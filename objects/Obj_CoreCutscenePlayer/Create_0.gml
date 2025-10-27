/// @description Insert description here
// You can write your code in this editor
audio_play_sound(Snd_Jump,0,0,global.SFXvolume)
audio_play_sound(Sng_SlicerOfthe7DreamsUpbeatRemiSx,0,true,global.musicvolume)
audio_sound_gain(Sng_SlicerOfthe7DreamsUpbeatRemiSx,0,0)
audio_sound_gain(Snd_RumbleExplode,1,60)
alpha = 0
gain = 0;
x+= 32
yspeed = -4.5
grav = 0.125
xspeed = 4
startx = x
image_speed = 0
jumping = true;
age = 0
draw_x = x
draw_y = y