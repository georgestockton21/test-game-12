/// @description ?



hovering = x-oPlayer.x +25
hovering_y = y-oPlayer.y


//player to right of creature gives negative

if sign(hovering)
{
	if hovering > 50
	{
		hover_slow = 50
	}
	else
	{
		hover_slow = 200
	}
}
else
{
	if hovering < -50
	{
	hover_slow = 50
	}
	else
	{
		hover_slow = 200
	}
	
	
}

/*

if hovering > 0
{
if hovering > room_w_half
{
	
}
	
	
}

*/
x = x - floor(hovering/hover_slow);
y = y - floor(hovering_y/hovering_y_slow)-6



//-5 works bc it's static -5
//if it was y - 5
//y would go down
//but y = y-5
//will always just be 5 below y

//the floor(hovering_y/hovering_y_slow) is changing here and tehrefore changing the y
//the y is not keeping those variables im p sure 
