/// @description ?




if !(place_meeting(x+hsp+(5*sign(hsp)),y+vsp,oWall))
{
	hsp = walksp*sign(hsp);
}
else
{
	hsp = -hsp
	image_xscale = -image_xscale
}


if (!place_meeting(x,y+9,oWall))
{
	vsp = 8	

}
else
{
	if hoppin <=0
	{
vsp = -8;
	}
	else
	{
	vsp = 0
	}
}



y = y + vsp;
x = x + hsp;