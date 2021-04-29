/// @description Control Menu

//Item ease in

//using open all event scripts (right clicking an instance) can be convenient when working on an instance as a whole

menu_x += (menu_x_target - menu_x) / menu_speed;
//this just takes:

//Keyboard Controls

if (menu_control)
{
	if (keyboard_check_pressed(vk_up))
	{
		menu_cursor++;
		//changes the selected menu item
		if (menu_cursor >= menu_items) menu_cursor = 0
		//one line if statement
		//if u go above what u should have, it will go back to 0
		//also the draw has a similar statement so its not checking for stupid shit
		//for no reason
		//bc it might mess up if it did
		//i thinkkkk
	}
			if (keyboard_check_pressed(vk_down))
	{
		menu_cursor--;
		//changes the selected menu item
		if (menu_cursor < 0) menu_cursor = menu_items -1
		//happens if less than 0 here
		//menu_items -1 is used so it'll head to the top but subtract 1 bc arrays are counted weird
		//array -1 is the final entry
	}
	if (keyboard_check_pressed(vk_enter))
	{
		audio_play_sound(snBlipPos,10,false)
		menu_x_target = gui_width+200
		//menu_x_target is goal, it's sent back 200 pixels away
		menu_committed = menu_cursor
		//state of menu = where the cursor is??
		//kinda weird, i'll figure it out
		ScreenShake(20,30)
		//calls the function
		//HHHHHHHEEEEELLLLLLLLLLLLA CONVENIENT
		menu_control = false;
		//takes away control!!
	}
	//mouse_x of mouse_y is position of mouse in game room, not necessarily on gui. so it's kinda spooky 2 use, b careful.
	var mouse_y_gui = device_mouse_y_to_gui(0);	
	/*var mouse_x_gui = device_mouse_x_to_gui(0);*/
	//calcs pos of mouse relative 2 gui

	if (mouse_y_gui < menu_y) /*checks if mouse y axis is less than bottom location,, which means above in GM*/ /* && (mouse_y_gui > menu_top /*checks if greater than top, greater is lower in GM, like a book/*))
	&& (mouse_x_gui > menu_x-200)*/
	//menu_x_target is used bc that's the goal of item location rather than the initial out of bounds position
	//NVM menu_x is actually changed to meet menu_x_target, it just calcs the far end so u gotta account for displacement
	//i would use a variable but a magic number here is fine bc that was just a test code
{
		//maybe later make it so if cursor goes off screen it freezes teh cursor image in place and outs it back whereve cursor comes back in2 frame
		//maybe an object would b best 4 that idk
		//OOOOH maybe do a serious sam cursor where u see enemy health from color of cursor
		//wouldnt b 2 hard i believe
		//perhaps thats a feature for another day tho
		menu_cursor = (menu_y - mouse_y_gui) div (menu_itemheight*1.5);
		
		if (mouse_check_button_pressed(mb_left))
		{
			//checks if left left mouse button is clicked
			audio_play_sound(snBlipPos,10,false)
		menu_x_target = gui_width+200
		//menu_x_target is goal, it's sent back 200 pixels away
		menu_committed = menu_cursor
		//state of menu = where the cursor is??
		//kinda weird, i'll figure it out
		ScreenShake(20,30)
		//calls the function
		//HHHHHHHEEEEELLLLLLLLLLLLA CONVENIENT
		menu_control = false;
		//takes away control!!
		
		//COULD USE A SCRIPT FOR THIS BC THIS CODE IS COPIED BUT WHATEVER IT'S OK FOR NOW
			
		}
		
		//it's like
		//menu_option = menu height - mouse position*
		// the lower the mouse is the higher the mouse_y_gui, therefor subtracting from menu_y. technically the stuff is happening at the top of the screen here
		//by that i mean the higher the num for bringing mouse down goes, the more it subtracts from the total height going downwards
		//resulting in height - mouse position height divided by text height * 1.5
		
		//the floor here is so it aligns with the menu array i believe
		//its not aleays necessary when calcing locations and 
		//FOUND REASON WHY WHOLE GUI IS CALCULATED AND NOT JUST OBJECTS OR WHATEVER
		//THIS RETURNS SOME BIG NUMBERS, BUT THE CODE CALCS FOR NUMBERS GREATER THAN THE MENU NUMBERS RATHER THAN STRAIGHT UP NUMBERS
		//SO WHILE 2 IS WHAT'S REALLY NEEDED, 11 IS GREATER THAN 2 AND WHATEVER IS CHECKING FOR 2, WHETHER IT'S >=2 OR >1 OR WHATEVER
		//U'LL ALWAYS GET THE TOP MENU HIGHLIGHTED AND SAME FOR BOTTOM
		//IT WORKS OUT BECAUSE UVE DIVIDED THE WHOLE MENU SUBTRACTED BY MOUSE POS AND DIVIDED BY MENU ITEM HEIGHT TIME 1.5* (*SO THINGS ARE A BIT MORE LENIENT AND WORK BETTER)
		//U DIVIED AND SEGMENTED THE GUI STARTING AT THE DISPLACEMENT SO MENU 0 IS 0 AND EVERY 1.5 (ACCOUNTS FOR THE 0.5 TACKED ON TO EACH MENUY ITEM FOR SEPARATION) U'LL GO UP BY 1 FLOORED NUMBER
		
		//IT WORKS LIKE
		
		//MENU_Y ALREADY TAKES DISPLACEMENT/MARGIN IN2 ACCOUNT
		
		//menu item selected = (gui bottom - mouse y position)
		
		//NO X IS NEEDED BC THIS IS ALL VERTICAL,, for now u could fix it probz later but it doesnt matter 4 now
		
		//div divides but returns whole numbers only
		//first real number is what divides the second. so 1 div 3 is 3/1 //FUCK THIS SHIT THIS IS FUCKING WRONG
		//DIV WORKS EXACTLY AS U'D EXPECT IT TO SO 2 DIV 1 IS 2/1
		//a floor could do the same thing maybe but this si conveinet whatevz
		//maybe a mouse_check_button_press thing could b looked in2 later ehre for an easier method but thwill will b better in the end def
		//this works because the array has 0 1 and 2 so the floored mouse position relative 2 the gui provides a good easy calc of that
		//its going bottom upwards but we've got it set like that and it's all good but whatevsz thats why we're subtracting and stuff
		
		//BTWW THE MOUSE THING U SAID WORKS MAYBE U COULD TURN IT OFF BY PUTTING AN IF MOUSE IS NEAR THE EDGES OR SOMETHING AND THATS THE ONLY
		//TIMWE THE MOUSE IS CREATED IDK WE'LL SEE
		
		//so here imagine this
		//10 inch ruler
		//go down 8 inches
		//id u subtract those 8 inches, u get 2 
		// that is what is happening here
		//if u were adding, it would be 12
		//but at that point subtraction would be useless
		//simply divide and floor the normal position
		//but because we are counting upwards
		//the subtarction is necessary
		//otherwise it would be 0,1,2
		//instead of 210
		
		
		
		
	}
	//gets mouse posiition realative to gui
	//p sure the var is jsut for naming convenience,, and other var stuff i suppose
	//0 is just the default device
	//idk maybe if u want multiplayer or multitouch on ipad or something u could play with that
	
}

if (menu_x > gui_width+150 && (menu_committed != -1))
{
	switch (menu_committed)
	{
		case 2: default: SlideTransition(TRANS_MODE.NEXT)
		{
			
				if (file_exists(PLAYERSTATS))
			{
				file_delete(PLAYERSTATS);
			}	
			
		 break;
		}
		case 1: 
		{
			if (!file_exists(SAVEFILE))
			//if there's no save file
			{
				SlideTransition(TRANS_MODE.NEXT)
				//does same thing as selecting new game
			}
			else
			{
				var file = file_text_open_read(SAVEFILE);
				//var file creates a variable called file
				//this file is the file states to be opened
				//file_text_open_read opens a file with the intent of reading it
				//a text file specifically
				var target = file_text_read_real(file)
				//file_text_read_real reads a real number from a given file
				//i believe only open files can be called
				file_text_close(file);
				//closes provided file (as long as it's open i assume)
				SlideTransition(TRANS_MODE.GOTO,target);
				
				
			}
		}
		break;
		case 0: game_end(); break;
	}
	
}

//NOTE
//u might wanna make ur code check to make sure a file isnt overwriting shit 4 no reason
//because if ur save is 0 already, why change it
//i think that's what's good



//BRACKETS CAN B USE IN CASES
//WHICH IS COOL


//new case added to continue. makes the room that opens the room in the
//SAVE FILE 

//case 0 is if you select quit, i.e. 0
//AAAAAAAAAAHH, JUST REMEMBERED ARRAYS WORK UPWARDS
//OK THAT HELPS A LOT


//in a switch, everything is done until the break;
//if one comes true ofc.
// the default is what occurs if nothing happens
// AHHH I GET IT!!
//case is a big 'ol "what if (specific)" type deal
//like, if my thing is
/*
switch ("FUCK")
{
	default: sex = big_cocks
	break;
case "FUCK":
case "NUTS":
	sex = dick;
 break;

}
*/
//that there would be true and make sex = dick
//it would also be true if "NUTS" was there instead of "FUCK"
//if nothing were true, sex = big_cocks
//because it's the default

