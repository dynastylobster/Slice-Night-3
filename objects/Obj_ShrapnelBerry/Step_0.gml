/// @description Insert description here
// You can write your code in this editor
if !global.paused
		{
	yspeed += grav
	y+=yspeed
	x+=xspeed
	}

if !place_meeting(x,y,Obj_DebrisPlatform) {
if place_meeting(x,y,[Obj_Wall, autoTileCol,Obj_Slope])
	{
		audio_play_sound(Snd_land,0,0,2)
		audio_play_sound(Snd_BlockBreak,0,0,1)
		audio_play_sound(Snd_Slice,0,0,0.5*global.SFXvolume,0,0.8)
	instance_create_depth(x,y,depth,Obj_BerryBoom);
	instance_destroy();
}
if place_meeting(x,y,Obj_Billy)
	{
		audio_play_sound(Snd_land,0,0,2)
		audio_play_sound(Snd_BlockBreak,0,0,1)
		audio_play_sound(Snd_Slice,0,0,0.25*global.SFXvolume,0,0.6)
	instance_create_depth(x,y,depth,Obj_BerryBoom);
	instance_destroy();
}
}