/// @description ?


/// @description ?


var file = file_text_open_read(PLAYERSTATS);
var file_read = file_text_read_real(file);
//forgot the actual reader and just had the opener lol
//was just getting the file id not the info inside
if file_read > 1
{
instance_create_layer(x,y,layer,oRainbows);
}
file_text_close(file);

//IMPORTANT
//bbox_bottom
//bbox_left
//bbox_right
//bbox_top
////ALLLLL GIVE Y/X COORDS RESPECTIVELY OF PART OF THE COLLISION BOX OF ANY
//OBJECT!!!!
//USE LIKE FOR LANDING ON FEET U ONLY WANT BOTTOM
//or write the code urself!!
//its probs updated everytime its called. idk tho probs should b put in a variable
//whatevz we're good here tho

//if u set the like vsp to 0 in the bullets it wouldnt go up or down
//and same deal with hsp

//maybe program better spread
//we're good atmmm
//bc we're just doin bullets not landing
//but u know
//lol



//other in collisions is the element being colided with

//I REMOVED POST DRAW BC AND ADDED NEW COLLISION CHECK/DELETE FOR OWALL HERE
//BC DRAW WAS OCCURING B4 STEP AND WAS MESSING THINGZ UP

//CHECSK FOR SHOOTABLE, DESTROYS IF TRUE, ELSE GETS TO WALL AND DESTROYS ON WALL!!
//ORDER IS IMPORTANT!!!

//other gives collision if inside collision

//if in with its ID of called instance

//other dot is used like other.<whatever is being referred back to>
//like a weird variable kinda


//CRAZY IMPORTANTT!! MAYBE USE INSTANCE_PLACE TO GET BETTER ENEMY DIRECTION





//some statements can be cintained in just 1 line like this one

//if image index == 0 that means it's at the first frame, the flash, which probs should never
//not b there bc flash is cool and makes sense it'd always go off

//place_meeting() is a bit faster when no specific id is needed





if place_meeting(x,y,oEnemy)
//place meeting here used 2 check if an enemy is being collided with
{
var enemyy = instance_place(x,y,oEnemy);
//instance_place() is used here 2 get exact id of the bullet that hit the enemy
//this gets exact id of enemy
launch = image_angle; ///AHAHAHAHAHHAHA I FIXED IT BITHCH
//OK U CAN PROBS PURGE/FIX HELLA CODE BC UR CODE IS DILUTRED AS FUCK NOW
//POINT_DIR WAS GETTING WEIRD ASS SPECIFIC ANGLES
//THE DIR OF BULLET IS WAYYYYYYYYYYY MORE CONVENIENT AND YEAH U SHOULD GO WHERE U GOT SHOT FROM
//NOT WHERE THE SHOT ALIGNZ 2 UR ORIGIN LOL

//HEYEHEY UR GUY KINDA LOOKS LIKE HES LOOKING UP FIX THAT
//ALSOOOO MAKE THE GAME PLAY SPECIFIC SPRITES FOR AIRBORNE instead of just walk cycle phases
//unless it does already lolllllll iddkidk


//lol maybe if ur game was like a pool table sim itd make sense
with enemyy
{
	hitfrom = other.launch;
}
//POINT DIREC WILL ALWAYS BE POS BC THATS HOW ANGLES WOOORK AKGHHHHGHHGG
}

//SHIT GETS STUCK ON LIKE 1 PIXEL
//u could fix poking out pixels
//which u should
//but also probs give some leeway on when u get stopped
//maybe like say if slop up from foot to pixel is like 5 pixels move up 5 pixels and go over??
//we'll see
//u can probs use length dir x for that btww