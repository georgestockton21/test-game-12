





if (done == 0)
{
	switch(sign(hsp))
	{
		case 0:
		if vsp <= 0 && place_meeting(x,y+1,oWall)
			{
			done = 1
			}
			break;
	case 1:
	if hsp < slide_time && vsp <= 0 && place_meeting(x,y+1,oWall)
	//i had the stuff in place_meeting() ordered wrong
	///VSP == 0 AT ARC OF LAUNCH,, SO MAKE SURE UR ALSO CALC FOR TOUCHING FLOOR
	{
		//thos said if hsp was = or < than slide_time
		//OOH i think there was a weird coincidental overlap
		//of those 2 variables
		done = 1;
		
	}	
		if hsp <= slide_time*2 && vsp <= 0 && place_meeting(x,y+1,oWall)
	{
		speed_up = 2;
	}
	break;
	case -1:
		if hsp >= -slide_time && vsp <= 0 && place_meeting(x,y+1,oWall)
	{
		done = 1;
	}
		if hsp >= -slide_time*2 && vsp <= 0 && place_meeting(x,y+1,oWall)
	{
		
		speed_up = 2
	}
	break;
	}
	
	//BIG FIX WAS U JUST NEEDING 2 CHECK FOR PROPPER COLLISION BC IT WAS PICKING UP SHIT WHILE MID AIR
	
	
//USE A SWITCH HERE NEXT TIME IT'D BE BETTER OPTIMIZED AND U'D HAVE BETTER
//CONTROL OVER IT
//THIS CODE LOOKS HORRIBLE THANK FUCK THIS IS A TEST GAME
//MAYBE FIX L8R IF U FEEL LIKE IT
///I FIXED AND POLISHED IT FUCKKKKKKKKKKKKKK YEAH BITCH!!!!!!
///U CAN ADD SWITCHES INSIDE OF SWITCHES WHICH IS COOL
///IM SURE U COULDVE USED AN ARRAY OR A ENUM HERE BUT THIS WORKS MAD WELL


	
	vsp = vsp + grv
	
	




	if(place_meeting(x,y+vsp,oWall))
	{
		if (vsp > 0) 
		{
			alarm[0] = 40;
			//because it has if (vsp > 0) it only occurs when
			//vsp IS 0
		}
		while (!place_meeting(x,y+sign(vsp),oWall))
		{
			y = y + sign(vsp);
		}
		vsp = 0
	}

	y = y + vsp;
	
	hsp = hsp - (hsp/(launched_speed/speed_up));
	
		if(place_meeting(x+hsp,y,oWall))
	{
		while (!place_meeting(x+sign(hsp),y+1,oWall))
		{
			x = x + sign(hsp);
		}
		hsp = 0
	}
	else
	{
	x = x + hsp;
	}
}
else
{
	hsp = hsp - (hsp/(launched_speed/speed_up/2))
	x = x+hsp
}



/*

if done == false
{
	vsp = vsp + grv;
	hsp = hsp - (hsp/launched_speed);
	hsp = max(1,hsp);
	vsp = max(0,vsp);
	
	if(place_meeting(x+hsp,y,oWall))
	{
		while (!place_meeting(x+sign(hsp),y+1,oWall))
		{
			x = x + sign(hsp);
		}
		hsp = 0
		//collision with wall makes hsp = 0
	}



	if(place_meeting(x,y+vsp,oWall))
	{
		//+ vsp instead of - vsp because
		//it's calculating down from the oPlayerDead
		//not up from oWall
		if (vsp > 0) 
		{
			alarm[0] = 60;
		}
		while (!place_meeting(x,y+sign(vsp),oWall))
		{
			y = y + sign(vsp);
		}
		vsp = 0
	}

	y = y + vsp;
	x = x + hsp;
	
	if hsp == 1 && vsp == 0
	{
		done = true
	}
}

if keyboard_check(vk_control) {show_message(done)}

*/ 
//fucked code,, has notes doe