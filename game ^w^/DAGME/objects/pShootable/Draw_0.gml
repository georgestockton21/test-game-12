/// @description ?
draw_self();
//basic drawer



if (flash > 0)
{
	flash--;
	shader_set(shRed);	
 	draw_self();
	shader_reset();
}

//parents can be used 2 set instances allll over multiple objects
//can work like classes
//so instead of shit like if place_meeting(x,y,enemyclass) with bullet
//u can set in object if place_meeting(x,y,bullet) and itll apply 2 all the kids
//i believe

//PLAN PARENTS AHEAD OF TIME USUALLYYYY!!!!
//use them like classes basically

//couldve made things more specific
//like vars 2 make stuff colidable or not
//idkkidk. it's super messay atm tho
//PLANN AHEAD!!!