/// @description Insert description here
// You can write your code in this editor
CheckOnscreen();
if !global.paused {
//if onscreen x+= 2.5
//if !onscreen x+= 6.9 }
if instance_exists(Obj_Billy) {
if audio_is_playing(Snd_Land) {
x-= Obj_Billy.xspeed/28
}
if !audio_is_playing(Snd_SpecialClear) {
xspeed = Obj_Billy.xspeed *1.0125
x+= xspeed
}
}
}
if x >= room_width-64 then instance_destroy()
x = clamp(x,0,room_width-64)