/// @description Insert description here
// You can write your code in this editor
randomize();
var trampocolor = choose(Spr_TrampoMega,Spr_TrampoMega,Spr_TrampoMegaP)
if instance_exists(Obj_TrampoMega) {
	Obj_TrampoMega.sprite_index = trampocolor;
}

if room != currentlevel {
		igt_time = 0;
		igt_done = false;
		currentlevel = room;
	}


if global.secondserving = true then hpsprite = Spr_HPSecondServing
if global.secondserving = false then hpsprite = Spr_HP

ini_open("save.ini")

ini_write_real("Prefrence","MusicVolume",global.musicvolume);
ini_write_real("Prefrence","SFXVolume",global.SFXvolume);
ini_write_real("Prefrence","Fox",global.billyfox);
ini_write_real("Prefrence","ZXFlip",global.jumpslicemap);
ini_write_real("Prefrence","Vsync",global.vsync);
ini_close();

if global.save = "file7" {
	global.totalstage = 0
	global.totalsecret = 0
}


fading_out = false
fade_timer = 270
if (room == Void_Boss_Room) {
fade_timer = 0;
}

	if audio_is_paused(global.music) {
audio_resume_sound(global.music)
	} else {
		
		
if global.music != noone {
	if !audio_is_playing(global.music) {
	audio_stop_all();
	audio_play_sound(global.music,0,true,0.6)
		}	
	}
		
	}
deathage = 60
prevmusic = global.music;
gotthem = false;
enterpresses = 0;
