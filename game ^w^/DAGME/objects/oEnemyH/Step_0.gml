/// @description ?

//Don't walk off edges
with bestie
{
//if (grounded) && (afraidofheights) && (!place_meeting(x+hsp,y+1,oWall))   *suggested code, next one is better comment code

if (grounded) && (afraidofheights)
{
	with other
	{ 
		if (!place_meeting(x+(sprite_width/2)*sign(other.hsp)+other.hsp,y+1,oWall))
		//FIX HERE WAS 2 ADD THE PLAYER'S HSP TO THE PREDICTED NUM (PREDICTED WHERE OWALL WOULD BE IF IT WAS THERE THEN TURN)
		//HSP KEPT PUSHING IT BACK SO THAT MEANT HASP NEEDED 2 GET CALCED
	{
	other.hsp = -other.hsp
	}
	}
}
}
	//flips that shizzz
	//easy way 2 reverse number
	//remmber hsp is effecting enemy movement, it's not the x itself
	//x+sprite_width/2 makes it turn around at half of sprite width away
	//better for scaling
	//could suck for big enemies
	//LOOK INTO collision_point() for more convenient collisions
	
	


//grounded = touching ground
//afriad of heights is checking if should even calc for not running off edges
//!place_meeting(x+hsp,y+1,oWall) checks to make sure that your x + where ur about 2 be 1 frame from then () hsp
//has no wall there
//also the y+1 is just 2 make sure that u r above the 
//just placing a boolean gives it's true or false
//remember that hsp will always be infront
//thats why u use it for colisions 2 predict the stop b4 it occurs
//i believe the same goes for vsp usually,, if not a *-1 should fix it


vsp = vsp + grv

if(place_meeting(x,y+vsp,oWall))
{
	while (!place_meeting(x,y+sign(vsp),oWall))
	{
		y = y + sign(vsp);
	}
	vsp = 0
}

x = bestie.x

y = y + vsp

if(!place_meeting(x,y+1,oWall))
{
	with(bestie)
	{
	grounded = false;
	sprite_index = sEnemyA;
	image_speed = 0;
	if (sign(vsp) > 0) image_index = 1; else image_index = 0;
	}
}
else
{
	with(bestie)
	{
	grounded = true;
	image_speed = 1;
	if (hsp == 0)
	{
		sprite_index = sEnemy;
	}
	else
	{
		sprite_index = sEnemyR;
		image_speed = 0.15
	}
}
}

with(bestie)
{
	if (hsp != 0) image_xscale = sign(hsp) * size;
	image_yscale = size;
	with other
	{
		image_xscale = other.size
		image_yscale = image_yscale / other.size
	}
}