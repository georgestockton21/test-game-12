

#region //Get Player Input




/*
#macro TERIYAKI "SEX.sav"

var file = file_text_open_write(TERIYAKI)
file_text_write_real(file,5)
file_text_close(file)

file_text_open_read(file)
var poonany = file_text_read_real(file)
file_text_close(file)

show_message(poonany)
*/
//what i learned/confirmed here
//#macros are just universal static "variables" but not changable (so technically not variables lol idk what 2 call them)
//u can open files for editing/reading p easily
//variables only stay in 1 event
//openinf files str8 up makes a file and shit i think
//makr sure u close it so u dont fuck shit up
//go to bed
//zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz


if(hascontrol)
{
key_left = keyboard_check(ord("A"));
key_right = keyboard_check(ord("D"));
key_jump = keyboard_check_pressed(vk_space);
key_jump_hold = keyboard_check(vk_space);
key_jump_hold_pressed = keyboard_check_released(vk_space)



canjump = clamp(canjump,0,10)


c_time = clamp(c_time, 0, c_time_max)
c_time --

//use less magic numbers next time 



if keyboard_check(ord("Q"))
{
	MusicPlayer(1,true)
}
if keyboard_check(ord("E"))
{
	MusicPlayer(1,false)
}



var move = key_right - key_left



if move != 0
{
var drifting = false;
hsp = move * walksp;
}
else
{
	drifting = true;
hsp = hsp/hsp_drift;

//USING X SIGN WAS FUCKED BC X GIVES POSITON NOT SPEED/MOVEMEMENT
//THIS SHIT CHECKS OFTEN MAYBE CLEAN THIS UP L8R ISS NO BIG DEAL ATM THO


if hsp == hsp_drift_cutoff*sign(hsp) * 1.25
{
hsp_drift = hsp_drift*1.75	
}

if hsp == hsp_drift_cutoff*sign(hsp)
//THIS WAS FUCKING WITH IT BC ITS STATICALY A POSITIVE!!
{
hsp = 0;
hsp_drift = hsp_drift/1.75
//probz a less sloppy way 2 do this, itz fine 4 now tho
}
//diving here makes it so theres no full stop and rather dives the number down until it's tiny af
//clamp makes it so div isnt making num infinitely small
//diving by mad small numbers gives a greater value
}





vsp = vsp + grv

if(place_meeting(x,y+1,oWall))
{
	c_time = c_time_max
//if makes shit happen one time and doesnt change until a change is made
//while effects the whole time until the condition is ended
}

if c_time > 0
{
		if key_jump
	{
	vsp = vsp - 10
	jumped = 1
	c_time = 0
}
}

	if key_jump_hold_pressed
	{
		canjumppressed = 0
	}	


if(!place_meeting(x,y+1,oWall))
{
if key_jump_hold && canjump > 0 && canjumppressed > 0 && jumped > 0
{
	if key_jump_hold_pressed
	{
		canjumppressed = 0
	}
	else
	{
	vsp = vsp -1
	canjump --
	}
}
}

//norm u should simplify down the amount of ifs but whatever



if(place_meeting(x+hsp,y,oWall))
{

	while (!place_meeting(x+sign(hsp),y+1,oWall))
	{
		x = x + (sign(hsp))/5;
	}
	hsp = 0
}



x = x + hsp;

if(place_meeting(x,y+vsp,oWall))
{
		canjump = 10
		canjumppressed = 1
		jumped = 0
	while (!place_meeting(x,y+sign(vsp),oWall))
	{
		y = y + sign(vsp);
	}
	vsp = 0
}


//PLAYER WAS GETTING CAUGHT BC ORIGIN POINT WASNT CENTERED WITH COLLION MASK
//SO SWITCHING DIRECTION WAS CAUSING WEIRD CLIPPING


y = y + vsp;


//animation :3



if(!place_meeting(x,y+1,oWall))
{
	sprite_index = sPlayerR;
	//dumy u 4got 2 set the sprite index
	if (sign(vsp) > 0) image_index = 2; else image_index = 3;
}
else
{
	
	if(sprite_index == sPlayerA)
	{
		audio_sound_pitch(snLandNeu,choose(0.8,1.0,1.2));
		//audio_sound_pitch changes the pitch
		//HELLLLA convenient
		//for increasing coin values and stuff
		//random_range() could be used here, it'd be too random for us here right now tho
		//choose() lets u control a few specific options
		//changing pitch depending on velocity would be cool TBH
		//if u could figure that out
		
		
		
		audio_play_sound(snLandNeu,4,false);
		//this works because this checks for the sprite before
		//the next lines that change it
		//you probably should use a variable
		//but this works here
	}
	//more sounds right here
	//u need to make specifications for sounds
	image_speed = 1;
	if (hsp == 0)
	{
		sprite_index = sPlayer;
	}
	else
	{
		if drifting == false
		{
		sprite_index = sPlayerR;
		image_speed = 1;
		}
		else
		{
			sprite_index = sPlayer;
		}
	}
}

var mouse_point = point_direction(x,y,mouse_x,mouse_y)

if mouse_point > 90 && mouse_point < 270

// > 90 && <270 is just the right side because angles and stuff
// no negatives there 2 my knowledge

{
	image_xscale = -1;
}
else
{
image_xscale = 1;
}



//mouse_x and mouse_y can be used 2 find mouse location


}
else
{
key_right = 0
key_left = 0
key_jump = 0
}
//sprite_index is the pool of sprites chosen
//the +1 and stuff is because an object cant directly
//clip in2 another safely, so +1 is right above it
//1 = true 0 = false

// VARS ONLY LAST 1 FRAME!!!!!!!!!!!!!!!!!!!!!!
//IF A VARIABLE EQUALS A STATEMENT THINGY, ITS JUST GONNA BE
//TRU OR FALSE AKA 1 OR 0 DEPENDING ON THE STATEMENT

#endregion


/*
if sprite_index == sPlayerR //sPlayerR is my running animation
{
     if image_index == 1 || image_index == 3
     {
     audio_play_sound(choose(snWalk1Neu,snWalk2Neu,snWalk3Neu,snWalk4Neu,snWalk5Neu),1,false)
     }
}
*/
//the reason this doesnt work is that image_index doesnt always use whole numbers
//check the tips u got on reddit
