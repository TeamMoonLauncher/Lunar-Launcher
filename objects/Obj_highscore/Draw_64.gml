draw_set_halign(512);

if(room == rm_leaderboards) {
	draw_set_font(spacemono);
	draw_set_color(c_white);
	draw_text(512, 150, "Highscores");
	draw_text(512,192,"1: " + string(global.highscore) + " Seconds");//draw value of global.highscore
	draw_text(512, 256, "2: " + string(global.secondscore) + " Seconds");
	draw_text(512, 320, "3: " + string(global.thirdscore) + " Seconds");
	
	draw_sprite(Spr_playerboost,0,480,415);
	draw_set_font(spacemono);
	draw_set_color(c_white);
	draw_text(550, 430, string(global.spacegems));
}