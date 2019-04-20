if(!instance_exists(obj_yes) && yesorno[page] == true && !yes && !no)
{
	yesButton = instance_create_depth(box_x + box_width/2 - 100, box_y + box_height/2, -box_y + box_height, obj_yes);
	noButton = instance_create_depth(box_x + box_width/2 + 100, box_y + box_height/2, -box_y + box_height, obj_no);
}
if(keyboard_check_pressed(ord("E")) && !instance_exists(obj_yes))
{
	if(page < array_length_1d(text) - 1)
	{
		page++;	
		yes = false;
		no = false;
	}
}
if(instance_exists(obj_yes) && yesButton.pressed == true)
{
	yes = true;
	instance_destroy(yesButton);
	instance_destroy(noButton);
}
if(instance_exists(obj_yes) && noButton.pressed == true)
{
	no = true;
	instance_destroy(yesButton);
	instance_destroy(noButton);
}