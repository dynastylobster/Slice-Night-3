CheckOnscreen();
age ++

if (irandom_range(0, 60) == 1 && lc == 0) {
	lc = irandom_range(6, 28);
	warning = 60;
}

if (lc > 0 && warning = 0) {
	if onscreen and lc= 6  {
		audio_play_sound(Snd_BlockBreak,0,0,global.SFXvolume,0,0.75);
		audio_play_sound(Snd_BerryShoot,0,0,global.SFXvolume/2,0,1.1);
	}
	if (collision_line(x, y, x, y + 200, Obj_Billy, true, true)) {
		HitPlayer();
	}
	lc--;
}

