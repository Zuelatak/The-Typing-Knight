var inst;
inst = collision_rectangle(x-(sprite_width*2), y-(sprite_height*2), x+(sprite_width*2), y+(sprite_height*2), Player, false, true);
if (inst != noone)
{
	//with (inst) 
	draw_sprite(InteractionButton, 0, x, y-sprite_height/2); //TODO: Draw in front of Everything
	return true;
}
else
{
	return false;
}