if (global.key_up_pressed) { pointer -= 1; }
if (global.key_down_pressed) { pointer += 1; }
if (global.key_up) { waiting++; if (waiting > 30) { pointer--; waiting = 25; } }
if (global.key_down) { waiting--; if (waiting < -30) { pointer++; waiting = -25; } }
if (!global.key_up && !global.key_down) { waiting = 0; }
pointer = clamp(pointer, 0, array_length(roomlist) - 2);
	
if (global.key_X_pressed || global.key_Z_pressed) {
	var a = asset_get_index(roomlist[pointer]);
	room_goto(a);
}
