CheckOnscreen();
age++;
if (onscreen) { x += slide; }
if (irandom_range(0, 60) == 1 && lc == 0) {
	lc = irandom_range(6, 28);
	warning = 60;
}

if (lc > 0 && warning = 0) {
	if onscreen and lc= 6  {
		audio_play_sound(Snd_Lightning,0,0,global.SFXvolume*2);
	}
	var f = collision_line(x, y, x, room_height - y, [Obj_Billy, Obj_MetalBlock], true, true);
	if (f) {
		f.heat += 600;
	}
	lc--;
}



if global.paused {
	if lc != 0 lc ++;	
}