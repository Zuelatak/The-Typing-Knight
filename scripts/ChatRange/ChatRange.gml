if(distance_to_object(obj_player) < 25 && !argument[0])
{
	button = instance_create_depth(x, y-((3*sprite_height)/4), -y, obj_interactionButton);
	return true;   
}
else if(distance_to_object(obj_player) > 25 && argument[0])
{  
	instance_destroy(button);
	return false;
}
return argument[0];