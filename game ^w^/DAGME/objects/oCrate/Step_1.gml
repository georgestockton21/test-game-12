/// @description ?

if (hp <= 0)
{
	if place_meeting(x,y,oHitSpark)
	{
	var spark = place_meeting(x,y,oHitSpark)
	with spark
	{
	instance_destroy();
	//this SUCKKS for most particles but is cool here bc it only makes sense on an object
	}
	}
	instance_destroy();
	}


//parent stuff will not overwrite,, u must delete specific steps
//in child objects make it apply
//or say u wanna edit in the object 2 diverge from parent

//FOLDERZ R MAD CONVENIENT
//ALSO THIS IS KINDA LIKE A CLASS!! A COLLISION WITH PSHOOTABLE IS A COLLISION WITH ALL ITS KIDS
//i imagine this works for other checks with pshootable
//we'll see
//like i assume if u say place_meeting(x,y,pShootable) itll mean all children
//we'll see lol