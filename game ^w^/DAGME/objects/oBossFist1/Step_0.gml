/// @description ?



if instance_exists(oBoss1)
{
switch hand_action
{
	case FIST_STATE_RIGHT.FOLLOW_HEAD:
	{
		
		var dist_y = y - oBoss1.y;

		y = y -dist_y/move_slow + hover_height;
		
		//considering this is effecting a theoretical y i believe
		//OH wactually the -dist/move_slow is keeping the +hover_height
		//from getting 2 extreme i believe

		//this works bc as dist is subtracted, dist gets slower
		//therefore stoppin dat shiz
		//the y is constant it just plays in2 future calcs
		
		
		var dist_x = x - oBoss1.x;
		
		x = x - dist_x/move_slow - hover_separation;
	}
	
	
	
	
	
}




}
else instance_destroy();