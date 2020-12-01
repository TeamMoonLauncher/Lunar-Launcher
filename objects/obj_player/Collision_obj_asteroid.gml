/// collide with player
global.dead=true;
controls = false;
audio_play_sound(player_death,1,false);
instance_destroy();
instance_create_layer(xprevious,yprevious,"Instances", obj_playerdead);
