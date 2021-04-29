/// @description Set up camera
cam = view_camera[0];
follow = oPlayer;

view_w_half = camera_get_view_width(cam) * 0.5;
//variable = width of camera (cam is variable for viewpoint 0) view * 0.5
//this code here gives the center of the width, so where the player should be
view_h_half = camera_get_view_height(cam) * 0.5;

xTo = xstart;
yTo = ystart;

shake_length = 60;
//shake of length at game start
shake_magnitude = 6;
//shake intensity
shake_remain = 6;
//magnitude goin down
buff = 64;

weirdsmiles = layer_get_id("WeirdSmiles")
weirdcubes = layer_get_id("WeirdCubes")
//buffer of cam position so screen doesnt shake too much
//xstart/ystart are OG locations
//x or y couldve worked because in create
//but xstart/ystart are nice for steps




//view_camera gives viewport. [] provides #. so view_camera[0] is view port 0
