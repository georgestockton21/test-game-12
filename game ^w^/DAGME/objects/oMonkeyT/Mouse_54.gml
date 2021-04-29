/// @description ?
///triggers when right mouse is pressed anywhere
//if u didnt choose global, mouse would have 2 be on top of the object
//so global is anywhere, and not global is on object(in hitbox/mask/collision mask i presume)


//SET TEXT VARIABLE IN VARIABLE TAB ITS USEFUL AF

if (point_in_circle(oPlayer.x,oPlayer.y,x,y,200)) && (!instance_exists(oText))
{
	with(instance_create_layer(x,y,"Text"/*layer ur on*/,oText/*text box object*/))
	{
		text = other.text;
		//text var with the created oText (just a plain old oText) = text var (other.text, because within a with other. returns from within native object)
		//this was u can edit specifics about objects created mid game
		length = string_length(text);
		//sets length for object to be the string length of text (after the string is set to other.text)
		displacement = other.displacement;
		line_br = other.line_br
	//this is set so tha words dont just pop from the middle

	}
	with (oCamera)
	follow = other.id;
	//follow is set back 2 player when oText is destroyed as defined in the object
	//other.id is the id of other,, and bc other is in a with, other.id is the id of the native object
	//.id is a fast way 2 get a specific object id i believe
	//remember variables only effect specific instances unless u code it otherwise i believe
	//also follow is set to be what the camera hones in on
	//in the cam object
	
	
	//instnace_create_depth is weird and might b blackboxing, look in2 it later
	//instance_create_layer just creates an instance on a given layer
	//im sure u could get the id somehow if u need specifics
	//but using a with here is fine 4 interacing with it
	
}
//u can check instance exists here without parameters bc there'll only b 1 oText at a time probs
//also instance_exists(instance_name) is just a boolean for whether something exists (in the room i presume)

//point_in_circle is formatted like
//point_in_circle(x of point to check*, y of point to check*,circle center x cord, circle y x cord,radius from center to check for)
//so it basically draws an imaginary circle and if ur within the stated radius then it will return true (bc it's a boolean)
//basically just coords of whatever,, use normal coord convention ig

/*
if distance_to_object(oPlayer) < 60
{
//maybe add a little prompt like an arrow here later,, but not under the mouse object	
}
*\
//ok so that was my code idk if it'd work bc im goin back 2 tutorial