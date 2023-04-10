/// @description ???
if (hue > 255) {
	hue = 0;	
}
hue += 1*global.delta;
color = make_color_hsv(hue,64,255);

if (reset) {
	obj_manager.diamonds -= 1;
}

event_inherited();

if (collect && !collected) {
	obj_manager.diamonds += 1;
	collected = true;	
}