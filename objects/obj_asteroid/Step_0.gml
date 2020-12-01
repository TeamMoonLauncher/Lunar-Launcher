/// @desc if boosted

if (inboost == 1) {
	speed = 7;
} else {
	speed = 5;
}

if (global.sec >= 300) {
	speed = 7;
} else if (global.sec >= 900) {
	speed = 9;
} else if (global.sec >= 1200) {
	speed = 11;
} else if (global.sec >= 1500) {
	speed = 13;
}

if (x <= -50) {
	instance_destroy();
}
