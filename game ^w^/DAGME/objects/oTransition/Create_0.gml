/// @description size variables and mode setup
w = display_get_gui_width();
//width of gui (gui is the screen, unrelted to cam)
//perfect 4 jumpscares >:)))))
//w is just acronym for width
h = display_get_gui_height();
//also yeah gui is like a layer kinda thats unrelated 2 cam
//shit just exists
h_half = h *0.5;
//just for half og h/gui height

enum TRANS_MODE
{
	OFF, //0
	NEXT, //1
	GOTO, //2
	RESTART, //3
	INTRO //4
}

mode = TRANS_MODE.INTRO
percent = 1;
target = room;

//target = room just states the room ur in lol

//transmode name and also all the other names r just variables
//basically,, as in their names are
//separated by comas except for last one
//formatted like:: enum <enum name>
//{
// <name>,
//<name>,
//<name>
//}
// items can be set to certain aspects!! so this is convenient af!
//so iff OFF up there was set to 5
//the u wrote TRANS_MODE.OFF
//all u'd be writing is 5!!
//its better than a variable because the enum number never changes
//its a constant

//if an enum isnt set to something, it'll just go down the list
//from 0 and up.
//so OFF up there is 0
//enums mostly r just convenient af

//this is good for modes
// so it could be all like power = power.fire_power
//maybe its just like, 3, but then u can have
//if power = power.firepower{  }
//and allow it 2 do cools shit because of that!!
//YEAH!!
//hell yeah
//bitch
