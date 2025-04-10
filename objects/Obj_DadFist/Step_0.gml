/// @description Insert description here
// You can write your code in this editor

otherfist = instance_nearest_notme(x,y,Obj_DadFist)
if dir = 1 {
dir = -otherfist.dir
}

if !global.paused {
age += 0.125;
if age = 9999999 age = 0;

if shooting {
if collision_line(x,y,otherfist.x,otherfist.y,Obj_Billy,false,false) {
		HitPlayer();
	}
if collision_line(x,y,otherfist.x,otherfist.y,Obj_SliceDown,false,false) {
		Obj_SliceDown.done_slicing = true;
	}
}

}

bonus = sin(age*4)*3


y = starty+ ( (sin(age/3)*32) * dir )

if shooting and !global.paused {
		if !audio_is_playing(Snd_VoidLazer) audio_play_sound(Snd_VoidLazer,0,0,global.SFXvolume);
	}
if global.paused {
	if alarm[0] > 0 alarm[0]++
	if alarm[1] > 0 alarm[1]++
}