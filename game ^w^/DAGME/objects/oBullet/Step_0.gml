/// @description ?

//following code replicates the speed built in function thingy



if (place_meeting(x,y,pShootable))
{
with (instance_place(x,y,pShootable))
{
	//instance_place gets specific id of where it is meeting 
	//good for getting collisions and ids instead of using place_meeting and instance_nearest()
	audio_play_sound(snHurtNeu,10,false);
	hp --;
	flash = 3;
	hitfrom = other.launch;
}

instance_destroy()
//THIS S GOOD 2 MAKE SURE EVERYTHING IS IN ORDER
//CONCERN WAS BULLET WOULD BE DESTROYED BY WALL AND NOT HURT CRATE
//BUT NOW IT MAKES SURE 2 HURT THE CRATE FIRST AND FOREMOST
//IF IT IS COLIDING WITH IT

}

//AGH ORDERING ISSUE IT WAS ASSIGNING LAUNCH B4 LAUNCH WAS UPDATED
//IT WAS STUCK AT THE CREATE EVENT, THEN WENT THRU THE MOTIONS AND EVERYTHING
//YEAHHH

//speed is weird and unpredicatable  it happens at some random ass step

if (image_index != 0) {
	if (place_meeting(x,y,oWall)) || (place_meeting(x,y,oCrate))
	{
while (place_meeting(x,y,oWall)) || (place_meeting(x,y,oCrate))
{
	//while is ok here bc it'll not touch eventually/be DEMOLISHED before it even matters
	//it just heads back 1 pixl then dies
//while occus constantly until told otherwise and happens more than once per frame
//just loops till proven wrong
x -= lengthdir_x(1,direction);
y -= lengthdir_y(1,direction);

//IN A BETTER GAME ID MAKE SPECIAL ANIM FOR OBJECT BEING DELETD WITH PARICLES ON IT BUT WHATEVZ ITS OK HERE
//mybe make rainbow/WINNING bonuses temporary? or activatable with a hotkey then they subtract from WINNING till normal again

//xor or ^^ checks if both nums are different and returns true if so

//or retunrs if any of the values are true
//and returns if BOTH are true. i assume.

//MAKE SURE U LIKE MAKE SURE _x and _y ARE DIFFEREENTIATED
//CTR F IT IF U HAVE BUGS MAYBE??

//yoinks dat speed away!!!
//so now fucky like clipping
}
	spd = 0;
	instance_change(oHitSpark,true)
	}
	//changes instance but keeps vars and stuff i believe
//unless told otherwise
}

//u can right click steps and press change step 2 change that shiz around
//also o enemy dead doesnt fall when crates get smashed/ground is removed underneath them
//its no bigz doe lol
//this is just a test game

x += lengthdir_x(spd,direction);
y += lengthdir_y(spd,direction);
//u know how this works. in direction, x and y added respectively at same time, object moves at an angle
//spd could = 999999999999999 but if angle x = 0 that shiz is goin NOWHERE
//speed is blackboxed and weird

//twas moving then calcing for damage and getting its ass deleetd b4 it could damage
//speed worked bc it ordered itself right but this is more controllable