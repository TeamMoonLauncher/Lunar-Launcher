/// @desc Spawns player
var horizontalpoint = random_range(200, 320);
var verticalpoint = random_range(100, 710);

instance_create_layer(horizontalpoint, verticalpoint, "Instances", Obj_playerrespawn);
image_speed = 4;
