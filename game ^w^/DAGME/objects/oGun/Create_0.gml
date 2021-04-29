/// @description Insert description here
// You can write your code in this editor
#macro PLAYERSTATS "PlayerStats.sav"
//make sure 2 use a macro when making files

//macro is just a permanent static variable
//unlike global variabales that are global BUT can be changed

//SOME VARIABLES LIKE CLICKS AND STUFF R BOOLEANS AND MAKE SHIT TRUE THEN THEY STAY LIKE THAT
//OR SOMETHING LIKE THAT

pointing = 1;

BackGun = instance_create_layer(x,y,"GunBack",oGunBack);

x_displace = 0;
y_displace = 0;


if file_exists(PLAYERSTATS)
{
	var file = file_text_open_read(PLAYERSTATS) 
	WINNING = file_text_read_real(file)
	file_text_close(file)
}
else
{
	WINNING = 0
}


firingdelay = 0;
recoil = 0;
fix = 0;