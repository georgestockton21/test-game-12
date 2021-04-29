///@desc calcs da flash from other objectz


flashtime = max(0,flashtime)



if flashtime > 0
{
layer_background_speed(layr_object,flashspeed)
	}
else
{
	layer_background_speed(layr_object,0)
	layer_background_index(layr_object,0)
}
	 flashtime --
	 
	
//some music stuff bc this object is persistent
