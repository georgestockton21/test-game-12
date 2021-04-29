/// @description Reset Gamespeed + Room 
game_set_speed(60,gamespeed_fps);
//game_set_speed(fps, type)
SlideTransition(TRANS_MODE.GOTO,room);
//the transition script
//enum called, target that's set

//alarms count down to the number stated in whatever statement they're used in
//so the code here says alarm[0] = 60
//that means this alarm (because it's alarm 0)
//will be set to 60 when the object touches the ground

//alarms activate when their number = 0

//the reason this isn't always set to 60 because of the if statement
//is because of the fact that the whole step even is wrapped in an
//if done == 0
//but when the alarm is set,, done is set to = 1
