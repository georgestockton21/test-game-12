// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information


///@function PlayerDeath
///@param Is_Player_Dead? looks for player death

function PlayerDeath(Is_Dead){
	
	
	if file_exists(PLAYERSTATS)
	{
	if Is_Dead == true
	{
	file_delete(PLAYERSTATS)	
	}
	}




}