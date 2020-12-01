/// Initialise player
image_index = 0;
image_speed = 0;
forceforward = 0;
inboost = 0;
forceup = 0;
angle = 0;
controls = true;
im=false;
mi=0;
mim=0;

global.dead=false;

layerID = layer_get_id("Collision");
tiles = layer_tilemap_get_id(layerID);

global.localgems=0;
gems=0;

global.sec = 0;
score=0;
