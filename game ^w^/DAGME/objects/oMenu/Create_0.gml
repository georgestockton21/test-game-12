/// @description GUI/VARS/MENU setup

#macro SAVEFILE "Save.sav"
//#macro macroname macroinfo

//macros carry information throughout the game (i believe)
//so if i use SAVEFILE it will read as "Save.sav"
//just use spaces and no ; or = when creating a macro
//they basically just copy and paste
//so yeah it's global


gui_width = display_get_gui_width(); //width of gui
gui_height = display_get_gui_height(); //height of gui
gui_margin = 32; //gui offset i assume

menu_x = gui_width + 200	//adding 200 here gives the gui and offset to the right so i can VROOM on2 the screen later
menu_y = gui_height - gui_margin; //offsets the y value from the margin
//this is actually the bottom because gui_get_height(); will return the full height of the gui therefore beacuse the pixels in y axis counts go higher to lower
//you get the bottom. same as gui_get_width(); will give you the far right of the gui.
//thats why gui_margin is necessary 2 subtract when calcing menu_x_target so the text isnt all up right there on the side

menu_x_target = gui_width - gui_margin //where gui is supposed to end up on the X value,, also is offset by margin
menu_speed = 25; //lower is faster,,,, speed menu comes in
menu_font = fFont1 //needs an added font
menu_itemheight = font_get_size(fFont1) * 2 //size of font
menu_committed = -1; //kinda like an enum,, just no wordz
menu_control = true;

menu[2] = "New Game";
menu[1] = "Continue";
menu[0] = "Quit";

//arrays count down

menu_items = array_length(menu) //gives length of the number of items in the named array
//it looks like array_length_1d and array_length_2d are obsolete now
//so i dont gotta deal with them
menu_cursor = 2;

menu_y = menu_y - ((menu_itemheight * 1.5)) * menu_items;

//formatted like
//menu_top = gui height - gui_margin/offset - ((font size *1.5)) * amount of items in the menu array


//array created by just counting down numz with variablea and stuffs

///OKKK,, so arrays just store shit in a more easily accessible way
///so like instead of using menu1, menu2, menu3,
///the array lets me just assign it all to one variable
//AND u can calc the number of items in the array
//and u can be all like


//balls = 1
//FUCK = menu[balls]
//then u'd be calling "Continue"


//this here is an array
//its a list of variables in one variable
//must be ordered backwards (i think, its just p good for ordering)
//order them however works best
//and its more efficient

//AAAAAAAAAAH IM A DUMBASS!!! I THNK UR SUPPOSED 2 NAME VARS THEN USE THEM
//LIKE
//var dumbass
//dumbass = 10
//THAT MAKES SOOO MUCH SENSE FUCK

//WAIT NVM I DONT THINK THATS WHAT IT DOES
//JUST USE VAR IF ITS TEMPORARY AND ONLY USED INSIDE 1 EXPRESSION


