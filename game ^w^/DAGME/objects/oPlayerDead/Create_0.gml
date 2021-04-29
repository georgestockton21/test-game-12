grv = 0.2;
done = 0;
launched_speed = 100
slide_time = 3
speed_up = 1
//EXPLOSION IS A PLACEHOLDER UNTIL BETTER ANIM IS MADE



with Flasher
{
	flashtime += 45
}
	ScreenShake(20,60)

image_index = 0;
//might be useless for me atm
//makes sure it starts on frame 1 


image_speed = 0.5

audio_play_sound(snExplosionNeu,10,false);
//does this once because in create
//more important than bullet sound as stated by priority being 10 
//and bullet firing sound is 5

//dont make this child of oEnemyDead, too many differences

game_set_speed(30,gamespeed_fps)
//changes speed of game, HELLLA CONVENIENT
//for pauses and stuff maybe? or bullet time???
//that makes it 30 fps, (30 frames, uses fps)

//LOOK INTO DELTA TIMING and stuff
//apparently its good
// can calc time delta_time

//speed then can b changed 2 edit that
with (oCamera) follow = other.id;

//.id gives id of an instance
//this is setting oCamera to follow self
//id is just safer than object

//u could set certain IDs and stuff in varables
//like instead of just being follow = oPlayer
//it could be follow = oPlayer.id
//just more conveient and useful in specific instances
//but not a huge deal here