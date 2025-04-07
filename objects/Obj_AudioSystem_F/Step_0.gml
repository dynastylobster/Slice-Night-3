// If the music isn't the same as global.music, we update it.
if (audio_sound_get_asset(m) != global.music) {
	m = global.music
}
// If the music has been updated, we stop the previous music.
if (audio_sound_get_asset(m) != audio_sound_get_asset(lastm)) {
	audio_stop_sound(lastm);
	lastm = m;
}
// Start the sound if we need to.
if (!audio_is_playing(m) && !global.paused) {
	m = audio_play_sound(m, 0, true);
}
// Pause the sound when paused.
if (global.paused) {
	audio_pause_sound(m);
} else {
	audio_resume_sound(m)
}