/// @description Insert description here
// You can write your code in this editor
onscreen = false;
hp = 3;
grav = 0.125
yspeed = 0;
prevHP = hp
timer = 0
max_fallspeed = 3
jumpspeed = 3

if !jumping or StillJump {
instance_create_layer(x,y,layer,Obj_CheckDown);
}
alarm[0] = 180
dir = -1
if StillJump then sprite_index = Spr_CrawlHopperGreen;
event_inherited();