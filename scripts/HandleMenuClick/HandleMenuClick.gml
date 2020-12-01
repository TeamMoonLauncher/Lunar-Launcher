/// @description HandleMenuClick( index );
/// @param  index 
function HandleMenuClick(argument0) {

	i = argument0;
	if(room == Rm_menu)
	{
	    if(i == 0)room_goto(Rm_Maps);
		if(i == 1)room_goto(rm_leaderboards);
	    if(i == 2)im=false;
	    if(i == 3)game_end();
		
		audio_play_sound(Menuclick,1,false);
	}
	if(room == Rm_Maps)
	{
	    if(i == 0)room_goto(Rm_launch);
	    if(i == 1)im=false;
	    if(i == 2)im=false;
	    if(i == 3)room_goto(Rm_menu);
		
		audio_play_sound(Menuclick,1,false);
	}
	if(room == Rm_settings)
	{
	    if(i == 0)window_get_cursor();
		if(i == 1)audio_resume_all();
		if(i == 2)audio_pause_all();
	    if(i == 3)room_goto(Rm_menu);
		
		audio_play_sound(Menuclick,1,false);
	}

	if(room == Rm_launch) {
		if(i == 0)im=true;
	    if(i == 1)im=true;
		if(i == 2)room_goto(Rm_menu);
		
		audio_play_sound(Menuclick,1,false);
	}
	if(room == Rm_jump) {
		if(i == 0)im=true;;
	    if(i == 1)room_goto(Rm_settings);
		if(i == 2)room_goto(Rm_menu);
		
		audio_play_sound(Menuclick,1,false);
	}
	if(room == Rm_boss) {
		if(i == 0)im=true;
	    if(i == 1)room_goto(Rm_settings);
		if(i == 2)room_goto(Rm_menu);
		
		audio_play_sound(Menuclick,1,false);
	}
	if(room == rm_leaderboards) {
		if(i == 0)room_goto(Rm_menu);
		
		audio_play_sound(Menuclick,1,false);
	}
	if(room == Rm_gameover) {
		if(i == 0)room_goto(Rm_launch);
	    if(i == 1)im=false;
		if(i == 2)room_goto(Rm_menu);
		
		audio_play_sound(Menuclick,1,false);
	}
}
