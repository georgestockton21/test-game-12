/// @description ?
firingdelay = firingdelay -1 - WINNING;
recoil = max(0,recoil -1)

if firingdelay < 0
{
	image_index = 0
}
else
{

image_index = 1

}

//max gives the highest variable in a list thing
//so 0 is the max normally,, but recoil = recoil -1 whenever
//it isnt at 0



if (mouse_check_button(mb_left)) && (firingdelay < 0)
{
	for (var shells = 5; shells > 0; shells --)
	{ //u had the thing mixed up, 2nd part of a for MUST RETURN TRU!! or whatevsz.
	
		var angle = image_angle;

	var bullet = instance_create_layer(x+lengthdir_x(130+oPlayer.hsp*pointing,angle+2*pointing),y+lengthdir_y(130,angle+2*pointing),"Bullets",oBullet)
	
	
	
	recoil = 10;
	firingdelay = 20;
	ScreenShake(2,10)
	//THIS IS WHERE AUDIO IS CALLED
	//THIS IS ON FRAME OF BULLET CREATION
	//IDK WHY U WOULDNT ADD TO CREATE EVENT OF BULLET
	//convenience maybe??
	//it probs works either way
	/*
	audio_sound_pitch(snLazerPos,choose(0.9,1,1.1));
	*/
	audio_play_sound(snLazerPos,5,false);
	//audio_play_sound(name of sound,sound importance (a var would be best here probs, boolean for if loops or not))
	//sn is used instead of s in naming bc s is for sprites already
	/*
	if image_angle > 90 && image_angle < 270
	{
	fixz = 5; //left
	}
	else
	{
	fixz = 10;	 //right
	}
	*/
	

		with bullet
		{
		spd = 25;
//u could add to the angle here,, but ur good 4 now


		direction = other.image_angle//point_direction(other.x,other.y,mouse_x,mouse_y);

		image_angle = direction;
		//sqrt(sqr(mouse_x)+sqr(mouse_y))
	
		///var GunVector = 
		//sqrt((sqr(oGun.x)+sqr(oGun.y)));
		///var MouseVector = 
		//sqrt((sqr(mouse_x)+sqr(mouse_y)));
		
		///var dot_prod_1 = 
		//mouse_x*mouse_y+oGun.x+oGun.y;
		
		//direction = arccos*(mouse_x * mouse_y + oGun.x * oGun.y) * (sqrt(sqr(mouse_x)+sqr(mouse_y)) * (sqr(oGun.x)+sqr(oGun.y)));
		
		
		
		//AHHHB I WASNT CALCING DIRECTIONNN THATS WHY ITS FUCKED
		//NVM I SHOULD JUST BE CALCING POINTS HERE
		
		
		//((cos*-1)*(dot_prod_1/(GunVector*sqrt(MouseVector))))

			//image_angle = point_direction(x,y,mouse_x,mouse_y);
		/*+ clamp(other.WINNING,0,10)*random_range(-1,1); */ //adds some randomness scaling 2 the speed
		}
		

}
}





//PARTS COULD B REDUNDANT BC OF FIX WITH PLAYER
//NO BIG DEAL 4 NOW THO
if(image_angle > 90) && (image_angle < 270)
{
	fix = 0;
	image_angle = point_direction(x,y,mouse_x,mouse_y+20);
	image_yscale = -1;
	with(oBullet)
	{
			if brand_new == true
		{
		//left
		y += 0;
		x += 0;
	}
	}
	
}

else
{
	fix = 0;
	image_yscale = 1;
	image_angle = point_direction(x,y,mouse_x,mouse_y+20); //WHAT THE FUCK THIS IS A FUNCTION????
	x += 0;
	
		with(oBullet)
	{
		if brand_new == true
		{
		//right
		y += 0;
		x += 0;
		}
	}
}

//FUCK RECOIL IS FUCKED FIX THAT ASAP!!


//UP HERE U JUST CHANGED DA ANGLE A BIT!! work well
//and is sustainable!!
 


//y or x scale stretches shit and stuff,,
// but positive is normal and negative is mirrored!!

//AAAAAAAAAH YOU DID IT!! BUG FIX ALL ON UR OWN!!
//U JUST HAD 2 FLIP DA BULLET SPRITE 2 MAKE IT ALIGN!!
//HUZZZZZZAHHH!! :]]]]]]]]]]]]]]]]]]]]]]]


// the greate than 90 above is because 90 is the angle!!
//same for 270,, which is straight down
//so youve established a full line down the middle of ur char basically
//or the origin point i suppose!!!

// HOW LENGTH DIR WORK
// first part in () is the amount of pixels moved
// second () is the angle ur supposed 2 have
//all it is is a number of how far it would take 2 get 2 a certain position
//so, like, its already at image_angle but it'd take the var
//num for recoil 2 get 2 there, so it subtracts it

//FUTURE TIP!!!!!!!! to stop bullet spred from effecting muzzle flash
//make gun create them in 2 different instances / layers!!
//so, like, the muzzle isnt random but da bullet is



//with() applies 2 object in bracket


//instance_create_layer creates an object on a specified layer.
//x cord, y cord, layer (in "" because its a name), name of object
//speed is fixed so its kinda lame sometimes
//other. has hella uses. other. in a with statement applies to the
//original object

//image_angle gives angle of image in first context

//image_angle can also be a variabled thingy.
//like its changed to the direction up there
//and direction works the same way
//it seems like when . is used it just gathers info
//from whatever comes after it



#region

#endregion


var file = file_text_open_write(PLAYERSTATS)
file_text_write_real(file,WINNING)
file_text_close(file)

WINNING = clamp(WINNING,0,10)

with BackGun{
x = other.x+oPlayer.hsp;
y = other.y+oPlayer.vsp;
image_angle = other.image_angle;

image_xscale = other.image_xscale;
image_yscale = other.image_yscale;
	
}

x = x - lengthdir_x(recoil,image_angle);
y = y - lengthdir_y(recoil,image_angle);