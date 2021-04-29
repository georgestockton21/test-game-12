/// @description Auto Save

//roomstart event triggers when a room starts ofc

//Overwrite old save
if (file_exists(SAVEFILE)) file_delete(SAVEFILE);
//so you can check for files around the executable
//which is cool for meta shit
//like
//if (file_exists("FAGGOT.exe")) show_message("U STUPID!!")
//oh and this line is a 1 line if statement
//so no {} required
//a ; is good still doe
//oh and there's gonna be an appdata directory that's created
//when u create a macro
//and other stuff probs i'll learn soon

var file;
//create a variable named file
//variables only exist within a function or object
//or whatever they're in
//also, i believe FUNCTIONS only go once
//so data won't be perma stored in them
//so if u have a var sex = 2
// and you sex --
//it will go to 1 at minimum, because the function only occurs once

file = file_text_open_write(SAVEFILE);
//file_text_open_write creates a file, usually a text file
//with the intention of writing inside of it
//it will open the file created by the macro
//also, the reason the previous file is deleted is so the save is overwritten
//i'm sure there's a better way tho, i'll figure it out later
file_text_write_real(file,room);
//this statement here writes a NUMBER in the previously opened TEXT FILE
//EVERYTHING in game maker is basically a real number
//for example, each room is a number
//that's why room is used to store the room's number up there
//the command goes like
//file_text_write_real(file being written to,what to write)
//rooms are stored like 0.0000, 1.0000, 2.0000, etc.
//just a bunch of nulls
file_text_close(file);
//simply chooses the file to close and closes it
//u should close before u edit a new 1,, i think
//and just when ur done with ur current 1