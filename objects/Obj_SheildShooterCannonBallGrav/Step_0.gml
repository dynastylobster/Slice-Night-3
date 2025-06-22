/// @description Insert description here
// You can write your code in this editor
if !global.paused 
		{
			y+=yspeed
			yspeed += grav
			x+= xspeed*dir
	}
if place_meeting(x,y,autoTileCol) {
audio_play_sound(Snd_BlockBreak,0,0,global.SFXvolume);
instance_create_depth(x,y,depth,Obj_BerryBoom)
instance_destroy();	
}
age+=0.5

draw_x = x+sin(age*2)*1.5