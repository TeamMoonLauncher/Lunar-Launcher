global.menu = keyboard_check_pressed(vk_enter);
global.menuup = (keyboard_check_pressed(ord("W")) || keyboard_check_pressed(vk_up))
global.menudown = (keyboard_check_pressed(ord("S")) || keyboard_check_pressed(vk_down))

global.a = (keyboard_check_pressed(vk_enter)) || mouse_check_button_pressed(mb_any);

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

if(room == Rm_Maps){
	im=true;
	mim = 4;
} else if(room == Rm_menu){
	im=true;
	mim = 4;
} else if(room == Rm_settings){
	im=true;
	mim = 4;
} else if(room == Rm_Unlocked){
	im=true;
	mim = 4;
} else if(room == Rm_launch){
	mim = 3;
} else if(room == Rm_jump){
	mim = 3;
} else if(room == Rm_boss){
	mim = 3;
} else if(room == rm_leaderboards){
	im=true;
	mim = 1;
} else if(room == Rm_gameover) {
	im=true;
	mim = 3;
}



