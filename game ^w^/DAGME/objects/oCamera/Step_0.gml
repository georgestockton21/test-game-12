/// @description Update camera

///@function SlideTransition()
///@param {string} Magnitude
///@param {string} Frames
//magnitude sets the strength (radius of pixels)
//frames sets the length of the shake in frames 60 = 1 secont at 60fps)

window_set_cursor (cr_none)
cursor_sprite = sCursor
//moved bc player isnt always on screen



//Update destination
if (instance_exists(follow))
{
	xTo = follow.x
	yTo = follow.y
	//so it just makes xTo and yTo the ideal go 2 spots for the cam there
	
	if((follow).object_index == oPlayerDead)
	{
		x = xTo
		y = yTo
		//puts x and y right where they should be
		//xTo and yTo normally are just the goals
		
	//checks if the object that is being followed is
	// oPlayerDead
	//.object_index is a real number, not a string
	//because of our code, cam will only every follow
	//dead when player dies
}
}
//Update object position
x += (xTo - x) / 15;
y += (yTo - y) / 15;


x = clamp(x,view_w_half+buff,room_width-view_w_half)
y = clamp(y,view_h_half+buff,room_height-view_h_half-buff)
//adding the buffer makes it so that the cam stays at half + a 64 pixel buffer\
//it just keeps cam one whole like grid square away from border

///screen shake
x += random_range(-shake_remain,shake_remain)
y += random_range(-shake_remain,shake_remain)
shake_remain = max(0,shake_remain-((1/shake_length)*shake_magnitude));
//smaller shake magnitude is the stronger the shake
//because shake magnitude works to end the shake faster or later
//this line here takes shake_remain and subtracts 1/shake_length (1/60) *shake_magnitude (shake intensity)
//therefore it takes the shake, subtracts 1/shake_length BUT that num is multiplied by shake_magnitude so it alwayz gets some boost
//but when its 0 its 0
//nuffin can b done then
//yeahhh because thats whats gettin subtracte
//the reason bigger = longer in shake length is that the bigger the divider the smaller the num being subtracted,,
//this allows the num to exist for longer
//

//

//max is biggest



//random_range is random num in the specified
//num range

//x = clamp(variable in question, middle of view, width of room-middle lenth)
// this makes half the room the minimum (right in middle) and the opposite side of the room
//the max

//NORMALLY WOULD BE MIDDLE!! CLAMPS COUNTERACT THAT

//clamp restrains a value to inbetween a min and a max
//like, clamp(val,min,max)
//val is the value that a clamp is being search out 4 or sumfin like
//that!!




//update camera view
camera_set_view_pos(cam,x-view_w_half,y-view_h_half)
//subtracting the half here subtracts half of the cam
//putting the cam in the center


//starts fast goes slow

//the subtraction here simply represents the difference between the ideal location (xTo/yTo)
//and the actual x/y coords
//so, it will keep adding the amount until they are =
//it is divided by 25 for a cool smooth and scaled movement effect


//this line checks for the player object (contained in a variable)
//xTo and yTo are assigned 2 be the x/y vallues of the follow variable (oPlayer)
//this can be seen in the "." used in the ".x" and the ".y"

//+= and -= can be used to add or subtract

if (layer_exists(weirdsmiles))
{
	layer_x(weirdsmiles,x/2)
	//x here is x of camera
}

if (layer_exists(weirdcubes))
{
	layer_x(weirdcubes,x/4)
}
//this code doesnt actually move anything, it just divides the x relative to the player
//so it makes it harder for the background 2 move if the number being divided b y is higher
//so weird smiles x of camera is divided by 2, making it half as fast as other background elements
//while weird cubes is half of that even
//it's relevant 2 the cam bc the cam is where the player will be
//this code isnt really rekative in menu doe because u havent set any code for it relative 2 the cam
//which is good bc stuff just has 2 scroll how u want it in the menu
//with no variation really bc u have a static viewport

