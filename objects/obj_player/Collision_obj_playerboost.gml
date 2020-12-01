/// @desc apply boost
audio_play_sound(Gempickup,1,false);
inboost = 1;

if (inboost == 1) {
	layer_hspeed("Background_Space", -4);
	alarm_set(0, 300);
}

