audio_stop_all();
audio_play_sound(Space_Theme,1,false);

if (audio_sound_get_gain(Space_Theme) <= 0) {
	audio_sound_gain(Space_Theme, 1, 5000);
}