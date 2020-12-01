global.localgems=0;
if(audio_is_playing(Space_Theme)) {
	audio_stop_all();
}

audio_play_sound(Main_theme,1,true);
