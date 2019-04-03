if(keyboard_check_pressed(ord("E")))
{
	if(page < array_length_1d(text) - 1)
	{
		page++;	
	}
	else
	{
		instance_destroy();	
	}
}