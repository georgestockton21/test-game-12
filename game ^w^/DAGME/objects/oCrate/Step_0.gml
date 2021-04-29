/// @description ?

//all is good 2 stop everything in a room
if place_meeting(x,y,oBullet)
{
	audio_play_sound(snHurtNeu,10,false);
	hp --;
	flash = 3;
}

if !place_meeting(x,y+vsp+1,oCrate)
{
if place_meeting(x,y+vsp+1,oWall)
{
	vsp = 0
	//using an || was checking for one or the other, this makes it so like only 1 is really considered at a time
}
else
{
vsp = 5	
}
}
else
{
vsp = 0
}

y = y + vsp

//point_distance like is good for an allroudn point dist
//isnt great for grav 
//but maybe for like a dart board or something