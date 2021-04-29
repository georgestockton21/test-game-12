/// @description Progress Text

letters += spd;
//spd is added to letters every frame
text_current = string_copy(text,1,floor(letters));


//string_copy provides the string data from the specified string, start point, and amount of the string from that point
//it's formatted like
//string_copy(string being copied, beggining of copy, amount of character that are copied from that point)
//also, to start at 1, use character 1 and not 0. character numbers start at 1 with this function
//so if u want 5 you'll use 5, and so on

//BONUS
//using floor(val) returns the calue rounded down to the nearest integer
//good to make sure there are no real numbers where there shouldnt be
//as in no decimals and stuff that could screw things up

//floor(letters) ise used here so that only a real value is returned
//because letters is increased by spd (0.25) every frame
//it is best that only a whole number is returned to avoid bugs
//also string_copy could floor naturally but we don't wanna take risks here



draw_set_font(fFont1);
//sets font of text that will be drawn
//u can use whatever font u want
//i'm just gonna use my menu font
//whatever
if (h==0) h = string_height(text) * text_scale;
//h == 0 at start according to create event
//one line if statement
//sets h (height variable) to = the string height of text (the text that will soon be displayed)
//takes font into account, i.e. font height
//make sure u set font first before string_height
//so it all aligns well
w = string_width(text_current) * text_scale;
//provides the width of the text box
//string_width(string) provides width of string in pixels
//make sure font is set first
//will increase with text_current

if floor(letters) > string_length(text)
{
	talking = false;
}
//i floored this because letters increases in increments
//so the if was coming back false until the 0.25 increment reached  the actual string length of text
//but that's fixed now so both are whole numbers
//and letters is rounded down
//so basically there's a 4 frame delay between text appearing/sound
//im sure i could wrap text creation and sound making in one variable or something but
//im good for now

//Destroy when done
if (letters >= length) && (keyboard_check_pressed(vk_anykey))
//checks to see if amount of letters displayed is equal to or greater than amount of letters in the string
// i used enter instead of vk_anykey here so u can move while text is going
//actually i will go back to using vk_anykey because it's new and a good thing 2 know how 2 do
//it just makes any key trigger that event
{
	instance_destroy();
	with (oCamera) follow = oPlayer;
}  //i believe i can put instance destroy beforehand because it will destroy the object first but then the
//resit of the actions will occur afterwards anyway
//because they are already set into motion


