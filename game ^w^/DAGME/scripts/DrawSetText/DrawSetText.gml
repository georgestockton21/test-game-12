// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information

///@function DrawSetText
///@param color
///@param font
///@param halign
///@param valign
/*
function DrawSetText(color,font,halign,valign){
	draw_set_color(color);
	draw_set_font(font);
	draw_set_halign(halign);
	draw_set_valign(valign);
}
*/
//this script is just convenient so u dont have 2 write all that shit every time
//it is summoned wherever it is written
//scripts activate then discard what was there originally
//it basically just does soemthing inside something else like a virus then discards itself
//it can make linear progress and stuff, but online by effecting other objects
//states bc the object will keep that inside

/*
function DrawSetText(color,font,halign,valign){
	draw_set_color(argument0);
	draw_set_font(argument1);
	draw_set_halign(argument2);
	draw_set_valign(argument3);
}

*/
function DrawSetText(color,font,halign,valign){
	draw_set_color(argument[0]);
	draw_set_font(argument[1]);
	draw_set_halign(argument[2]);
	draw_set_valign(argument[3]);
}
