/// @description ?
//make an enum for different phases of hands
//i.e. follow boss, follow player, slam ground, slide ground, etc
//maybe make a shockwave with explosions that runs across the ground??
//like when fist hits ground

image_xscale = -1

move_slow = 10;

hand_action = FIST_STATE_LEFT.FOLLOW_HEAD;

hover_height = 20

hover_separation = -30

enum FIST_STATE_LEFT //ENUMZ ARE UNIVERSAL, MAYBE USE AN ARRAY HERE NEXT TIME
{
FOLLOW_HEAD,
HIT_GROUND,
SWIPE_GROUND
}

