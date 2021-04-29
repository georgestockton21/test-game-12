/// @description ?

if hp < 0
{
	instance_destroy(bestie);
	var dead = instance_create_layer(x,y,layer,oEnemyDead);
	with dead
	{
		size = 5
		hsp = lengthdir_x(5,other.hitfrom);
		hsp += 5*sign(hsp);
		vsp = lengthdir_y(5,other.hitfrom);
		vsp -= 8*sign(vsp);
		
		
	}
	
	instance_destroy();
}