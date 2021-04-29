/// @description ?
if talking == true
{
if (floor(letters) != floor(oldletters))
{
	audio_play_sound(snTalk1Neu,100,false);
}
oldletters = letters
}

//here's how this code works
//if (var we set when the rounded down amount of letters after step event) != (rounded down amount of letters declared in the previous end step)
//{play sound}
//old letter var == letter var,, so that when it looks back around oldletters will be antequated
//and the if != will come back true