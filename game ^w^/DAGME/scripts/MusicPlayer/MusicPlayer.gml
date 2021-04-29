// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information


///@MusicPlayer
///@param song number
///@param t/f play or stop song





function MusicPlayer(song_wanted,play){
	
	
	
song[1] = snSong1
song[2] = snSong2
	
	//separating play or stop from the same variable for conveinience and maybee optimization idk
if play == true
{
	if !audio_is_playing(song[song_wanted])
	{
audio_play_sound(song[song_wanted],10,1)
global.song_playing = song_wanted
	}
}
else
{
	if audio_is_playing(song[song_wanted])
	{
		audio_stop_sound(song[song_wanted])
	}
}


	
}



//THIS KINDA WORKS BUT NOT REALLY,  NEEDS DEBUG
//U KNOW HOW FILES WORK NOW DOE
//USE SHAUN SPALDINGS MUSIC TUTORIAL
//I THINK ACTIVATION ONLY PLAYS WHILE SCRIPT IS RUNNING
//MAYBE MAKE IT CHANGE A GLOBAL VARIABLE INSTEAD OF A FILE


///@MusicPlayer
///@param songz[song_number]
///@param stop T/F
///@description song player




/*
function MusicPlayer(song_wanted){





#macro SONG_PLAYING "song.sav"

song_command[1] = "snSong1"
song_command[0] = "Stop_Song"

var filez = file_text_open_write(SONG_PLAYING);
//MAKE SURE U USE A VAR HERE AND NOT JUST A STR8 UP FILE NAME
file_text_write_string(filez,song_command[song_wanted]);
file_text_close(filez);


var file = file_text_open_read(SONG_PLAYING);

if file != "Stop_Song"
{
	file_text_close(file)
}
else
{
	file_delete(SONG_PLAYING)
}
















}

*/


/*

var song_playing = song_command[song_wanted];
var filez = file_text_open_write(SONG_PLAYING);
file_text_write_string(filez,song_playing);
//if u dont define variable data leaks can occur
var GO_4_IT_SONG = file_text_open_read(SONG_PLAYING)
file_text_close(SONG_)
//u should def make a script 4 this l8r
//this is song name that will be added to the file

if stop == false
{
	audio_play_sound(GO_4_IT_SONG,100,true);
}
else
{
	if audio_is_playing(GO_4_IT_SONG)
	{
		audio_stop_sound(GO_4_IT_SONG)
	}
}
}
//LOOKK IN2 AUDIO_PAUSE_SOUND

/*















//accidentially had this in an enmu for a sec and bugged it

/*
songz[0] = "NOT_IMPORTANT"
songz[1] = "snSong1"





switch(song_wanted)
{
default:
	file_text_open_write(SONG_PLAYING);
	file_text_write_string(SONG_PLAYING,songz[song_wanted]);
	file_text_close(SONG_PLAYING);
	var song_play = file_text_open_read(SONG_PLAYING);
	if (song_play != "NO_SONG")
	{
	audio_play_sound(song_play,100,true);
	file_text_close(SONG_PLAYING);
	}
	file_text_close(SONG_PLAYING)
	break;
	case 0:
	if file_exists(SONG_PLAYING)
	{
	var songz_play = file_text_open_read(SONG_PLAYING);
	if (!songz_play == "NO_SONG")
	{
	if !(file_text_read_string(SONG_PLAYING) == "NO_SONG")
	{
	file_text_open_write(SONG_PLAYING);
	file_text_write_string(SONG_PLAYING,"NO_SONG");
	file_text_close(SONG_PLAYING);
	}
	}
	else
	{
		file_text_close(SONG_PLAYING);
	}
	}
	break;
}
}

//to do
//make a way to stop it, maybe wrap in another function or something
*/