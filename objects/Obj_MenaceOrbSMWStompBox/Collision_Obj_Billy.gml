/// @description Insert description here
// You can write your code in this editor
if !parent.stomped and other.hit = false{
if Obj_Billy.y < y-8 {
		Obj_Billy.yspeed = -7
		Obj_Billy.bouncing = true
		parent.stomped = true;
		audio_play_sound(Snd_Bounce,0,0,global.SFXvolume,0,0.8);
		audio_play_sound(Snd_BlockBreak,0,0,global.SFXvolume*0.75);
	}
}