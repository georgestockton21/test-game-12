/// @description ?

y = bestie.y;
x += hsp;


/// @description ?

if !place_meeting(x+sign(hsp),y,oWall)
{
if place_meeting(x,y+1,oWall)
{
hsp += walksp
}
}
else
{
hsp *= -1
	
}



if hp <= 0
{
	with oGun
	{
	WINNING += 0.5;	
		
	audio_play_sound(snExplosionNeu,11,false);
	
	}
	
	instance_destroy(bestie);
	var dead = instance_create_layer(x,y,layer,oEnemyDead);
	with dead
	{
		if (other.hitfrom) > 90 && (other.hitfrom < 270)
		{
		hsp = lengthdir_x(5,other.hitfrom.x) + (5*sign(hsp));
		vsp = lengthdir_y(5,other.hitfrom.y)-(8*sign(vsp));
	
		}
		else
		{
		hsp = lengthdir_x(5,other.hitfrom.x)-(5*-sign(hsp));
		vsp = lengthdir_y(5,other.hitfrom.y)-(8*sign(vsp));
			
		}
		size = other.size
	}
	
	instance_destroy();
}

//VARIABLE DEF PAGE IS BEST FOR STUFF U EDIT A LOT IN CREATION PAGE
//AKA IN ROOM EDITOR


//IT WA SONLY GOING RIGHT BC I FORGOT THE .x and .y
//so it was just getting the angle
//thats also why it was lesser when u shot from right, bc angle was lesser
//this was fucky but im glad it's all fixed now