/// @description ?
//use this after writing broadcast name in the slide u want of animation
//any name can be used
//u should keep it releavnt tho
//it's the little circle button next to the play button in the sprite editor i believe


//GRR IT WASNT EVEN USING AIRBORN SPRITES

//im p sure u cant call the same sprite broadcast from 2 different sprites
//nvm u just have 2 specify the sprite probs









/*


while sprite_index == sPlayerA
{
	if SpriteBroadcast("walk_low",function(){
		
		with oGun
		{
			x_displace = 0;
			y_displace = 60;
			show_debug_message(y_displace)
		}
		
		
		
	})
	if SpriteBroadcast("walk_high",function(){
		
		with oGun
		{
			x_displace = 0;
			y_displace = -9;
		}
		
		
		
	})





SpriteBroadcast("footstep", function(){
	//CALLING fucntion() THERE SHOWS THAT THE FOLLOWING WILL BE A WHOLE ASS FUNCTION BUT 2 STILL ADD IT 2 THE FUCNTION BEING CALLED
	//i think just checks for boradcasts sfrom specific instance
	//I THINKK
	//that'd just make sense

audio_play_sound(choose(snWalk1Neu,snWalk2Neu),1,0)
with oGun
		{
			x_displace = 0;
			y_displace = -10;
		}

//show_debug_message is so useful god i wish i knew that existed before
})
//THE ) HERE CLOSES THE EARLIER FUNCTION

/// @description ?


//i believe some confusion is made by duplicated sprites
//and exact same broadcast names, ive got a fix for now but make sure 2 find a better 1
//l8rrr

	
	SpriteBroadcast("walk_high",function(){
		
		with oGun
		{
			x_displace = 0;
			y_displace = -9;
		}
		
		
		
	})


*/
//FUCK HAD AN EXTRA } HERE THAT WAS FUCKING THE IF THAT WE HAVE NOTED UP THERE	
//}











	SpriteBroadcast("walk_low",function(){
		
		with oGun
		{
			x_displace = 2*pointing - lengthdir_x(recoil,image_angle);;
			y_displace = 28 - lengthdir_y(recoil,image_angle);
		}
		
		
		
	})


SpriteBroadcast("footstep", function(){
	//CALLING fucntion() THERE SHOWS THAT THE FOLLOWING WILL BE A WHOLE ASS FUNCTION BUT 2 STILL ADD IT 2 THE FUCNTION BEING CALLED
	//i think just checks for boradcasts sfrom specific instance
	//I THINKK
	//that'd just make sense

audio_play_sound(choose(snWalk1Neu,snWalk2Neu),1,0)
with oGun
		{
			x_displace = 0 - lengthdir_x(recoil,image_angle);
			y_displace = 0 - lengthdir_y(recoil,image_angle);
		}

//show_debug_message is so useful god i wish i knew that existed before
})
//THE ) HERE CLOSES THE EARLIER FUNCTION

/// @description ?

	SpriteBroadcast("walk_high",function(){
		
		with oGun
		{
			x_displace = -1*pointing - lengthdir_x(recoil,image_angle);
			y_displace = -9 - lengthdir_y(recoil,image_angle);
		}
		
		
		
	})



	
	SpriteBroadcast("walk_mid",function(){
		
		with oGun
		{
			x_displace = 0 - lengthdir_x(recoil,image_angle);
			y_displace = 23 - lengthdir_y(recoil,image_angle);
		}
		
		
		
	})

	


	
	SpriteBroadcast("stand",function(){
		
		with oGun
		{
			x_displace = 0 - lengthdir_x(recoil,image_angle);
			y_displace = 0 - lengthdir_y(recoil,image_angle);
		}
		
		//gun recoils forward what?? fix that asap!!!
	})

	//u could make a switch there but whatever ur good 4 now
	



//THIS STUFF IS SPECIFIC AND CAN LIKE ALWAYS BE USED FOR SPRITE BROADCASTING I BELIEVE
//SO YE JUST KEEP THE EVENT DATA STUFF IN MIND
//MAYB MAKE A SCRIPT FOR IT LATER

//the switch up there can be kinda messy esp if ur using hella sounds



//event data gives ds map data for something
//changes specific depending on where/how it is called
//use <data_called>[? "data needed"]


//FIXX ALL THAT SHIT FUCK!!!!!