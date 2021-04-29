/// @description 
text_scale = 2
talking = true
spd = 0.25;
line_br = 0;
//speed of text creation
//num of characters per frame
//speed of 1 would be 1 character per frame, etc.
letters = 0;
oldletters = 0;
//amount of letters currently drawn on screen
text = "This is a test string!\nSecond line!";
//this is the default string
//this will likely be edited in specific instances in the game
//   \n is a line break
//use it as you would normally use an enter
//u can use as many as u like
//example
// "\n\n\nHELOOO" would be 3 line breaks and then "HELOOO"
length = string_length(text) * text_scale;
//this var will be the length of the text created
//string_length returns the character length of the string in the parentheses
//so length in this instance would be the amount of characters in the text variable
text_current = "";
//text_current will be some of text
//in other words, it will be as much of text as we tell it to be
//but it will remain blank in the create step
//because it should begin empty
//so when it's set to 4 characters, it'll be "This"
//when it's 5 it'll be "This "
//and so on
w = 0;
//width of text box i imagine
h = 0;
//height of text box i imagine
//border of text box (i imagine)
//i'm sure u could use a tileset for this or something
//but this'll be enough for now
border = 10
//border of text box from text

displacement = 0;
