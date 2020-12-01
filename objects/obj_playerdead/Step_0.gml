/// @desc apply grav
//gravity
y += forceup;
forceup+=0.08;

if (image_index == image_number) {
	image_speed = 0;
}

if(y>=780) {
		room_goto(Rm_gameover);
}
