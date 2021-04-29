/// @description draw black bars

if (mode != TRANS_MODE.OFF)
{// if mode doesnt = enum off
	//draw gui draws on screen, unrelated 2 cam
	//cool 4 menus!! or inventories
	draw_set_color(c_maroon);
	//sets color of following drawing
	draw_rectangle(0,0,w,percent*h_half,false);
	draw_rectangle(0,h,w,h-(percent*h_half),false);
	//timesisng percent by h_half 
	//draw_rectangle(x cord of top left corner, y cord of top left corner, x cord of bottom right corner,>>
	//>>y cord of bottom right corner, true = 1 pixel outline, false = filled)
	

	//string shows da variable's, like, amount and stuff
	//yeahhhh,, if that makes sense.
		
}
