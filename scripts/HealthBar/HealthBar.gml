if(global.playerHealth < 10)
{
	draw_sprite_stretched(spr_healthBar, 9, argument[0]-(sprite_width/2)-3, argument[1]-(sprite_height/2)-20, sprite_width*(4/3), sprite_height*(1/4));
}	
else if(global.playerHealth < 20)
{
	draw_sprite_stretched(spr_healthBar, 8, argument[0]-(sprite_width/2)-3, argument[1]-(sprite_height/2)-20, sprite_width*(4/3), sprite_height*(1/4));
}	
else if(global.playerHealth < 30)
{
	draw_sprite_stretched(spr_healthBar, 7, argument[0]-(sprite_width/2)-3, argument[1]-(sprite_height/2)-20, sprite_width*(4/3), sprite_height*(1/4));
}	
else if(global.playerHealth < 40)
{
	draw_sprite_stretched(spr_healthBar, 6, argument[0]-(sprite_width/2)-3, argument[1]-(sprite_height/2)-20, sprite_width*(4/3), sprite_height*(1/4));
}	
else if(global.playerHealth < 50)
{
	draw_sprite_stretched(spr_healthBar, 5, argument[0]-(sprite_width/2)-3, argument[1]-(sprite_height/2)-20, sprite_width*(4/3), sprite_height*(1/4));
}	
else if(global.playerHealth < 60)
{
	draw_sprite_stretched(spr_healthBar, 4, argument[0]-(sprite_width/2)-3, argument[1]-(sprite_height/2)-20, sprite_width*(4/3), sprite_height*(1/4));
}	
else if(global.playerHealth < 70)
{
	draw_sprite_stretched(spr_healthBar, 3, argument[0]-(sprite_width/2)-3, argument[1]-(sprite_height/2)-20, sprite_width*(4/3), sprite_height*(1/4));
}	
else if(global.playerHealth < 80)
{
	draw_sprite_stretched(spr_healthBar, 2, argument[0]-(sprite_width/2)-3, argument[1]-(sprite_height/2)-20, sprite_width*(4/3), sprite_height*(1/4));
}	
else if(global.playerHealth < 90)
{
	draw_sprite_stretched(spr_healthBar, 1, argument[0]-(sprite_width/2)-3, argument[1]-(sprite_height/2)-20, sprite_width*(4/3), sprite_height*(1/4));
}	
else
{
	draw_sprite_stretched(spr_healthBar, 0, argument[0]-(sprite_width/2)-3, argument[1]-(sprite_height/2)-20, sprite_width*(4/3), sprite_height*(1/4));
}