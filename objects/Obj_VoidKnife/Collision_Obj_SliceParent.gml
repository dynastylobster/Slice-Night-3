switch(other.object_index) {
case Obj_SliceSide:
immuneTimer = 30;
if (dink == 0) {
if (instance_exists(Obj_Billy)) {
if (Obj_Billy.y > y) { dink = -30; } else { dink = 30; }
} else { dink = 30; }
image_angle = (left) ? dink * -1 : dink;
}
if (!audio_is_playing(Snd_Dink)) {
audio_play_sound(Snd_Dink, 0, 0);
}
other.done_slicing = true;
break;
case Obj_SliceDown:
immuneTimer = 30;
dink = 30;
image_angle = (left) ? dink + 270: dink;
if (!audio_is_playing(Snd_Dink)) {
audio_play_sound(Snd_Dink, 0, 0);
}
other.done_slicing = true;
break;
}