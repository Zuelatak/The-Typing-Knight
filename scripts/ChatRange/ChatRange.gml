var inst = collision_rectangle(x-(sprite_width*2), y-(sprite_height*2), x+(sprite_width*2), x+(sprite_height*2), Player, false, true);
if(inst != noone)
{
	draw_sprite(InteractionButton, 0, x, y-sprite_height/2); //TODO: Draw in front of everything	
	return true;
}
else
{
	return false;	
}
