/// @description ?

// Inherit the parent event

draw_self();
//basic drawer



if (flash > 0)
{
	flash--;
	shader_set(shRed);	
 	draw_self();
	shader_reset();
}




//
//event_inherited(); calls parent event

