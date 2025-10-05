/// @description Insert description here
// You can write your code in this editor
if done_slicing damage = false

if damage = false mask_index = Spr_Empty
if damage mask_index = sprite_index

if image_index > 4 instance_destroy()

if instance_exists(Obj_Billy) {
if Obj_Billy.dashing then instance_destroy();	
}

if done_slicing {
instance_create_layer(x,y,layer,Obj_BillyShipBoom)
instance_destroy();	
}
if xspeed < 5 xspeed ++
x+=xspeed

if place_meeting(x,y,[Obj_Wall,autoTileCol]) {
	walltimer--

}
if walltimer = 0 {
instance_create_depth(x,y,depth,Obj_BillyShipBoom)
audio_play_sound(Snd_Land,0,0,1)
audio_play_sound(Snd_BlockBreak,0,0,0.6)
instance_destroy();
}