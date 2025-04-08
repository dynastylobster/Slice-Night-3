age+= 0.125;

if (global.key_up_pressed) { pointer -= 1; visualpointer -= 1; audio_play_sound(Snd_Jump,0,0,global.SFXvolume*2,0,0.9) }
if (global.key_down_pressed) { pointer += 1; visualpointer += 1;audio_play_sound(Snd_Jump,0,0,global.SFXvolume*2,0,0.9) }
if (global.key_up) { waiting++; if (waiting > 30) { pointer--; visualpointer--; waiting = 25; audio_play_sound(Snd_Jump,0,0,global.SFXvolume*2,0,0.9) } }
if (global.key_down) { waiting--; if (waiting < -30) { pointer++ visualpointer++; waiting = -25; audio_play_sound(Snd_Jump,0,0,global.SFXvolume*2,0,0.9) } }
if (!global.key_up && !global.key_down) { waiting = 0; }
pointer = clamp(pointer, 0, array_length(roomlist) - 2) ;

if (global.key_X_pressed || global.key_Z_pressed) {
	var a = asset_get_index(roomlist[pointer]);
	room_goto(a);
}



if y < starty + 2 and y > starty - 2 {
y = starty	
}

if global.key_up y -= 4
if global.key_down y+= 4

camera_set_view_pos(view_camera[0],0,y-120);

if y != starty {
y = lerp(y,starty,0.0125);
}