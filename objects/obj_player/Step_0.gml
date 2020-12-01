global.up = (keyboard_check(ord("W")) || (keyboard_check(vk_up)) || (keyboard_check_pressed(vk_space)))
global.left = (keyboard_check(ord("A")) || (keyboard_check(vk_left)))
global.down = (keyboard_check(ord("S")) || (keyboard_check(vk_down)))
global.right = (keyboard_check(ord("D")) || (keyboard_check(vk_right)))

// In Menu Events
if(im)
{
    if(global.a)HandleMenuClick(mi);

   
   
    
    if(global.menuup)
    {
        if( mi == 0)mi=mim;
        mi--;
    }
    
    if(global.menudown)
    {
     if(mi ==(mim-1))mi=-1;
        mi++;
    }
}

if(global.menu && !im)
{
    im=true;
}
else
{
    if(global.menu && im)
    {
        im=false;
        mi=0;
    }
}

//gravity
y += forceup;
forceup+=0.08;

//Asteroid belt controls
if (controls == true) {
//move up
if (global.up) {
	forceup = -4;
}
if (global.down) {
	forceup = 2;
}
//Moon surface controls
if(room == Rm_jump) {
	
	x += forceforward;
	forceforward = 0;
	
	if(global.right) {
		forceforward = 2;
	}
	if(global.left) {
		forceforward = -2;
	}
}
}

if(room == Rm_launch) {
	 if(y>=780) {
		room_goto(Rm_gameover);
	} 
}

//animation
if (y > yprevious) { 
	image_speed = 0; 
	image_index = 0; 
	if (room == Rm_launch) {
		maxangle = -12; 
	}
} else { image_speed = 0.2; 
	if (room == Rm_launch) {
		maxangle = 12;
	}
} 

//Moon surface animation
if(room == Rm_jump) {
	if (x > xprevious) { sprite_index = spr_player_walkright; image_speed = 0.2; 
} else { sprite_index = spr_player_walkleft; image_speed = 0.2; 
	}
	
if (global.right) && (global.up) && (x > xprevious) { 
	sprite_index = spr_player_jumpright; image_speed = 0.2;
} else if (global.left) && (global.up) && (x > xprevious) {
	sprite_index = spr_player_jumpleft; image_speed = 0.2;
	}

//Collision
tilemap_get_at_pixel(tiles, obj_player.x, obj_player.y);

//Right Collision
if(tilemap_get_at_pixel(tiles, bbox_right + forceforward, y) != 0) {
	x = round(x);
	while(tilemap_get_at_pixel(tiles, bbox_right, y) == 0) {
	x += 1;
	}
	while(tilemap_get_at_pixel(tiles, bbox_right, y) != 0) {
		x -= 1;
	}
	forceforward = 0;
}

//Left Collision
if(tilemap_get_at_pixel(tiles, bbox_left + forceforward, y) != 0) {
	x = round(x);
	while(tilemap_get_at_pixel(tiles, bbox_left, y) == 0) {
	x -= 1;
	}
	while(tilemap_get_at_pixel(tiles, bbox_left, y) != 0) {
		x += 1;
	}
	forceforward = 0;
}

//Up Collision
if(tilemap_get_at_pixel(tiles, x, bbox_top + forceup) != 0) {
	y = round(y);
	while(tilemap_get_at_pixel(tiles, x, bbox_top) == 0) {
	y += 1;
	}
	while(tilemap_get_at_pixel(tiles, x, bbox_top) != 0) {
		y -= 1;
	}
	forceup = 0;
}

//Down Collision
if(tilemap_get_at_pixel(tiles, x, bbox_bottom + forceup) != 0) {
	y = round(y);
	while(tilemap_get_at_pixel(tiles, x, bbox_bottom) == 0) {
	y -= 1;
	}
	while(tilemap_get_at_pixel(tiles, x, bbox_bottom) != 0) {
		y += 1;
	}
	forceup = 0;
}	
	
}
	
///Set timer
global.sec+= (delta_time*0.000001)*1;
if (place_meeting(x,y,obj_asteroid)) {
	global.sec+=0;
	global.currentscore=global.sec;
}

//apply angle
if(room == Rm_launch) { 
	angle = lerp(angle, maxangle, 0.1);
	image_angle = angle;
}

if (place_meeting(x,y,obj_playerboost)) {
	global.localgems+=1;
	global.spacegems+=1;
} else {
	global.spacegems+=0;
}


