/// @description Die

//this whole event is triggered by a collision with oEnemy, hence the
//event name

with (oGun) instance_destroy();
with (oGunBack) instance_destroy();
//destroys the gun,, uses a with and destroys it in one line
hsp = lengthdir_x(hsp,point_direction(x,y,other.x,other.y));
vsp = lengthdir_x(vsp,point_direction(x,y,other.x,other.y));
instance_change(oPlayerDead,true);

//instance_change switches the instance to a whole new one
//it's formatted like
//instance_change(object to change to, is the create event activated)

//in that one we DO want a create event

//OK HERES WHY THATS SO USEFUL
//i believe all the variables from the OG object will remain the same
//so it can be used when that is necessary]
//instead of just deleting and creating a new object






direction = point_direction(other.x,other.y,x,y)

//POINT DIRECTION USE
//it is formatted like this
//first object, 2nd object
//the angle from object 1 to 2 is the direction


//OTHER here is the enemy, because it's in a collision for that object

//when moving stuff sometimes its good 2 use direcrtion instead of just angle
//direction is a bit more built in i think as opposed to angle
hsp = lengthdir_x(15,direction);
vsp = lengthdir_y(10,direction)- (2);

//if i wanted 2 make a specific .other,, i shouldntve added to the collision with oEnemy
//or i probs could figure it out it'd just suck

//lengthdirs work like 
//lengthdir_<>(length of imaginary line drawn, direction in which line is drawn)
//this results in the length of the angled line away, but simplified down to its respective axis
//thats why it works with hsp/vsp. it's not effecting the angle,
//its providing a number that it should move
//so, lengthdir_x coupled with lengthdir_y gives a diagonal direction

//the -2 up there just dums the vertical downa bit

// OOH wait no it tones it UP because - is up for some reason in GML
//multiplying by other.size provides some scaling with the creature's size
if (sign(hsp) != 0) image_xscale = sign(hsp);

PlayerDeath(true)

//sign provides a 1 or -1 (or 0 if it's 0 i believe)depending on size of variable or num put in its ()
// so what it's asking here is if there is any number other than 0 in there, then 
//make the image_xscale = that direction bc moving means a new facing direction

