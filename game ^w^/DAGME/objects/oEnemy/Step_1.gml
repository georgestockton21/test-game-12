/// @description ?

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
		hsp = lengthdir_x(5,other.hitfrom);
		hsp += 5*sign(hsp);
		vsp = lengthdir_y(5,other.hitfrom);
		vsp -= 8*sign(vsp);
	
		}
		else
		{
		hsp = lengthdir_x(5,other.hitfrom);
		hsp += 5*sign(hsp);
		vsp = lengthdir_y(5,other.hitfrom);
		vsp -= 8*sign(vsp);
			
		}
		size = other.size
	}
	
	instance_destroy();
}

//VARIABLE DEF PAGE IS BEST FOR STUFF U EDIT A LOT IN CREATION PAGE
//AKA IN ROOM EDITOR