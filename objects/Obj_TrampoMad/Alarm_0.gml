/// @description Insert description here
// You can write your code in this editor
CheckOnscreen();
grounded = false;
xspeed = forwardspeed*facing;
if onscreen {
audio_play_sound(Snd_jump,0,false,global.SFXvolume*2,0,0.7)
}
yspeed = jumpspeed;
y-= 6
image_index = 1;
alarm[0] =-4