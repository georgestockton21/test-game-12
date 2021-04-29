/// @description progress the transition


if (mode != TRANS_MODE.OFF)
{
	if (mode == TRANS_MODE.INTRO)
	{
		percent = max(0,percent - max((percent/10),0.005));
		//so because its -percent/10 it starts fast af and slow later
		//this is bc the higher the num, the higher the result and therefore faster moves
		//same with when the num is lower,, it goes slower!!
		//the 0.005 is the lowest possible number,, OOOOHHH!! so its the min value for the  
	}
	else
	{
	percent = min(1.2,percent+max(((1.2- percent)/10),0.005));
	//this here is the min(1(highest possible), or percent(self) +max(((1- self/10), 0.005 (lowest possible)):
	//it adds teh highest point between 1-self/10,, and 0.005 being the absolute max here.
	//itll come 2 me
	//FUCK
	//percent = the lowest of 1, or self + the highest of 1 -percent/10, 0.005.
	//1 is there because 1 i 100%,, everything else is just lesser percetages.
	//so the percen is decreased and increased
	//extra bracket is just like in math so 5+(5*5) is 30 and not 50
	//IMPORTANT
	//so here we have it set so that if its not OFF, and its intro the bars open.
	//BUT if anything else happens they close.
	
	}
}
if (percent == 1.2) || percent == 0
{
	switch (mode)
	{
		case TRANS_MODE.INTRO:
		{
			mode = TRANS_MODE.OFF
			break;
			//just turns everything off
		}
		case TRANS_MODE.NEXT:
		{
			mode = TRANS_MODE.INTRO
			room_goto_next();
			break;
			//goes to next room!
			//this also triggers the black bars
		}
		case TRANS_MODE.GOTO:
		{
			mode = TRANS_MODE.INTRO
			room_goto(target);
			//room_goto heads to the room in the parentheses i.e. ()
			//target here is a variable for the desired room
			break;
		}
		case TRANS_MODE.RESTART:
		{
			game_restart();
			//restarts whole game
			//resets a lot of stuff like variables (except for specific examples)
			//kinda black boxed tho so be careful
			break;
		}
	}
}

//a switch statement returns the result of the expression in brackets
//case is a like "what if"
//this is 4, like, when working with the results of the switch
//then using break; ends the case

//u have to put a : after the cases,, idk why but u do

//enums just convert numbers to english. very cool!

//in theory if u used percent = max(0,percent-0.05); it would just move towards and stop at 0.
//way easier than hella clamps!!
//then ofc u could do percent = min(1,percent+0.05); to add and return the lowest num (num that isnt 1)
//other line would return highest (num that isnt 0)


/////////MODERN NOTE
//SWITCH IS JUST FOR EXECUTING WHATEVER COMES FIRST
//AND IF ONE IS EXECUTED THEN THE REST ARE NOT AND IT STOPS THERE
//I THINK EDIT: SO APPARENTLY YOU HAV TO USE A BREAK; TO MAKE IT STOP
//OTHERWISE ITLL KEEP GOING AND EXECUTING EVERY ACTION DOWN THE LIST

//ITS KINDA LIKE AN IF,, BUT THE ENUMS HERE ARE BOOLEANS SO ITS LIKE if TRANS_MODE.RESTART == true
//but instead its just case TRANS_MODE.RESTART
///YEAHHHH KNOWLEDGE BITCH!!!