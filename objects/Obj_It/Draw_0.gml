draw_self();

var drawx = 0;
var drawy = 0;

if (instance_exists(Obj_Billy)) {
var horTB = x - Obj_Billy.x;
var verTB = y - Obj_Billy.y;

var right = false;
var left = false;
var up = false;
var down = false;

if (horTB > 0) {
left = true;
} else if (horTB < -0) {
right = true;
}

if (verTB > 0) {
up = true;
} else if (verTB < -0) {
down = true;
}

if (abs(horTB) >= abs(verTB) * 1.5) { up = false; down = false; }
if (abs(verTB) >= abs(horTB) * 1.5) { left = false; right = false; }

if (up && !down) { drawy -= 5; }
if (left && !right) { drawx -= 5; }
if (down && !up) { drawy += 5; }
if (right && !left) { drawx += 5; }
}

draw_sprite(Spr_It_Idle_Pupil, age, x + drawx, y + drawy);
age++;

if (!audio_is_playing(Snd_It) && !doneSpeakin) {
	audio_play_sound(Snd_It, 0, false, 100);
	doneSpeakin = true;
}

if (speakage == 0) { tts = "You have shown your desire to explore and complete."; }
if (speakage == 4 * 60) { tts = "I have prepared a gift for you."; }
if (speakage == 6 * 60) { tts = "You will not be rewarded."; }
if (speakage == 9 * 60) { tts = "Good luck."; }
if (speakage == 12 * 60) { tts = ""; }
var f = draw_get_halign();
draw_set_halign(fa_center);
draw_text(camera_get_view_x(view_camera[0]) + 214, camera_get_view_y(view_camera[0]) + 220, tts);
draw_set_halign(f);
speakage++;