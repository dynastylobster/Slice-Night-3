audio_stop_all();
global.music = noone
global.walljump = true;
global.curSongForSubtitles = audio_play_sound(Sng_BalladOfDisparCredits,0,0);
global.motuunlocked = true;
ini_open("save.ini");
ini_write_real("save5","motu",true);
ini_close();