// If the music isn't the same as global.music, we update it.
if (m != global.music) {
	m = global.music
}
// If the music has been updated, we stop the previous music.
if (m != lastm) {
	audio_stop_sound(lastm);
	lastm = m;
}
// Start the sound if we need to.
if (!audio_is_playing(m) && !global.paused) {
	audio_play_sound(m, 0, true);
}
// Pause the sound when paused.
if (global.paused) {
	audio_pause_sound(m);
} else {
	audio_resume_sound(m)
}