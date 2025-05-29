/// @description Insert description here
// You can write your code in this editor
if sprite_index != Spr_PowerBoofer_Active {
	audio_play_sound(Snd_Dink,0,0,global.SFXvolume*2);
	if instance_exists(Obj_Billy) {
	global.key_Z = true
	Obj_Billy.yspeed = -5
	if Obj_Billy.x > x
	{Obj_Billy.xspeed = 7; global.key_right = true}
	if Obj_Billy.x < x
	{Obj_Billy.xspeed = -7; global.key_left = true}
	
		sprite_index = Spr_PowerBoofer_Active
	if !instance_exists(Obj_SliceDown) {
		HitPlayer();
		} else {
		if 	Obj_Billy.y > y-24 HitPlayer();
		}
	
	}
	alarm[0] = 45
	instance_create_layer(x,y,layer,Obj_ParryBallEffect);
	}
if other.sprite_index = Spr_FlameDice and other.done_slicing = false {
instance_create_depth(x-6,y,depth,Obj_DiceDMG)	
instance_create_depth(x,y,depth,Obj_DiceDMG)	
instance_create_depth(x+6,y,depth,Obj_DiceDMG)	
with(Obj_DiceDMG) {
	image_index = irandom_range(1,6);	
}
other.done_slicing = true;
}