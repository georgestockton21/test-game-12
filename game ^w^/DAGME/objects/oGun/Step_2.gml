/// @description ?

var point = point_direction(x,y,mouse_x,mouse_y);

if point > 90 && point < 270
{
	//left
	pointing = -1;
	var fixz = 0;
var point_dir = -1;
var displace_x = 8;
}
else
{
	pointing = 1;
	var point_dir = 1;
	var displace_x = -2;
	var fixz = 2; //ahhh so inneficient this var use sucks. whatever for now.
}

x = oPlayer.x -2 + x_displace+displace_x-fixz;
y = oPlayer.y -24 + y_displace - 8;

//AHHHHHHHHHHHHHHHHHHHHHHHHHH FUCKKKKKK FIX THIS ALLL TOMOWRROOWW
//FINISH GAME ASAP THIS SHIT IS SO FUCKED OH MY GOD


//AHAHAHHAHA IM A DUMMYYY ITS ALL INFRONT OF U JUST WATCH THE TUTORIAL AGAIN
//DONT GET DISCOURAGED. ur kinda rusty and tired atm. also ur working with code u made as a way
//shittier dev. next game the code will be SOOOOOOO much better
