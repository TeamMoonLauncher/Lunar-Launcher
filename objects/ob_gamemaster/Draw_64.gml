if(im)
{
	if(room == Rm_menu) || (room == Rm_Maps) || (room == Rm_jump) || (room == Rm_boss) || (room == Rm_launch) || (room == Rm_settings) || (room == Rm_gameover) {
	draw_sprite_ext(Spr_arrow,0,room_width/2.65, 280 + (100 * mi), 1, 1, 0, c_white, 1);
} 
if(room == rm_leaderboards) {
		draw_sprite_ext(Spr_arrow,0,room_width/2.65, 600 + (100 * mi), 1, 1, 0, c_white, 1);
		}
}

if (room == Rm_Maps) || (room == Rm_Unlocked) {
			draw_sprite(Menu_Button_purple,0,790, 256);
			draw_sprite(Spr_playerboost,0,960,256);
			draw_set_font(spacemono);
			draw_set_color(c_white);
			draw_text(880, 273, string(global.spacegems) +"/50");
			draw_set_color(c_yellow);
			draw_text(370, 370, "Coming Soon!");
			draw_text(370, 465, "Coming Soon!");
}

if (im) && (room == Rm_launch) || (room == Rm_jump) || (room == Rm_boss) {
	draw_sprite(Menu_Button_resume,0,512,256);
	draw_sprite(Menu_Button_levellock,0,512,352);
	draw_sprite(Menu_Button_quittomenu,0,512,448);
}

if (im) && (room == Rm_launch) {
	draw_sprite(Menu_Button_purple,0,790,448);
	draw_sprite(Spr_playerboost,0,960,448);
	draw_set_font(spacemono);
	draw_set_color(c_white);
	draw_text(880, 465, string(global.localgems) +"/50");
}

if  (room == Rm_gameover) {
	draw_sprite(Menu_Button_playagain,0,512,256);
	draw_sprite(Menu_Button_levellock,0,512,352);
	draw_sprite(Menu_Button_quittomenu,0,512,448);
	
	draw_sprite(Menu_Button_purple,0,790,448);
	draw_sprite(Spr_playerboost,0,960,448);
	draw_set_font(spacemono);
	draw_set_color(c_white);
	draw_text(880, 465, string(global.spacegems) +"/50");
	font_get_size(spacemono_go);
	draw_text(600, 180, "GAME OVER!");
}
