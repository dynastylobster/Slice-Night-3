/// @description Insert description here
// You can write your code in this editor
if place_meeting(x,y,Obj_Billy) {
if global.key_C then Obj_Billy.running = true
Obj_Billy.bouncing = true;
if Obj_Billy.yspeed >= 0 and !global.paused and Obj_Billy.y <= y{
audio_play_sound(Snd_Bounce,0,0)
}
if Obj_Billy.y <= y  
{ Obj_Billy.yspeed = -7 } else {
if !Obj_Billy.grounded Obj_Billy.yspeed+= 2;
image_speed = -1
}
image_index = 1
image_speed = 1
}

if image_index <1 then image_speed = 0;