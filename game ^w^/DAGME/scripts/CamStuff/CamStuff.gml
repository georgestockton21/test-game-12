///@function SlideTransition
///@param {string} Mode
///@param {string} Target

function SlideTransition(){
	with (oTransition)
	{
	mode = argument[0]; //turns it off
	if (argument_count > 1) target = argument[1];//the argument 1
	}
	
	//argument[1] is the room number u provide
	//yeahhh i think
	
	//i THIIIIIIIINK the arguments here might be in reference to the
	//scripts arguments, maybe. we'll see.
	//count is total number of arguments passed thru
	//arg count is how many it passes thru in the OG??
	//
	
	//give the argument from mode.
	//so it takes the first result from the enum
	//in this case it is OFF



}
//scripts can be declared in objects and be native to objects
//yeahh!!

//script_execute executes a script u thiiiiiiiink
//idk lol
//or it uses a function
//yeah



/// @function ScreenShake
/// @param Magnitude shake mag
/// @param Time time shake is active
function ScreenShake(){
	with(oCamera)
	{
	if (argument0 > shake_remain)
	{
		shake_magnitude = argument[0]
		shake_remain = argument[0]
		shake_length = argument[1]
	}
	}
}
ScreenShake()