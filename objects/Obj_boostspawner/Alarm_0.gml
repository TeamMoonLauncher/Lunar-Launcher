/// @desc spawn stuff
var horizontalpoint = random_range(1300, 1366);
var verticalpoint =  random_range(10, 740);

instance_create_layer(horizontalpoint, verticalpoint, "instances", obj_playerboost);
alarm_set(0, 360);