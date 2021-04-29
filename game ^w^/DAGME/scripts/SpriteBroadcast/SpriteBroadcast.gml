// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function SpriteBroadcast(message_type,callback){






if(event_data[? "event_type"] == "sprite event")
{
	//checks event data for event type and then makes sure there is a sprite event
	if(event_data[? "message"] == message_type)
	{
		callback();	
		
	}
}
}

//if checks event data,, checks event type if sprite event
//{
//if event data message == message given
//perform action wanted
//}

//MAKE SURE THIS IS IN SPRITE BROADCAST STEP IM P SURE IT HAS 2 BE THERE




//THIS STUFF IS SPECIFIC AND CAN LIKE ALWAYS BE USED FOR SPRITE BROADCASTING I BELIEVE
//SO YE JUST KEEP THE EVENT DATA STUFF IN MIND
//MAYB MAKE A SCRIPT FOR IT LATER

//the switch up there can be kinda messy esp if ur using hella sounds



//event data gives ds map data for something
//changes specific depending on where/how it is called
//use <data_called>[? "data needed"]