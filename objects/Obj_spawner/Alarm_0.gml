/// @desc spawn stuff
var horizontalpoint = random_range(1300, 1366);
var verticalpoint =  random_range(10, 740);

instance_create_layer(horizontalpoint, verticalpoint, "instances", obj_asteroid);
alarm_set(0, 90);

if (global.sec >= 300) {
	alarm_set(0, 60);
} else if (global.sec >= 900) {
	alarm_set(0, 30);
}
