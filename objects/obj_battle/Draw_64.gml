/// @description Insert description here
// You can write your code in this editor
//draw_set_halign(fa_center);




draw_set_halign(fa_center);
draw_set_valign(fa_center);
draw_text(window_get_width()/2 - characterDistance, window_get_height() - characterPlacement - 30, "HP: " + string(global.playerHealth) + "/100");
draw_text(window_get_width()/2 + characterDistance, window_get_height() - characterPlacement - 30, "HP: " + string(global.enemyHealth) + "/100");

if(global.playerHit)
{
	draw_sprite(spr_slash, playerSlash, window_get_width()/2 - characterDistance, window_get_height() - 5);
	playerSlash++;
	if(playerSlash == 5)
	{	
		playerSlash = 0;
		global.playerHit = false;
	}
}
if(global.enemyHit)
{
	draw_sprite(spr_slash, enemySlash, window_get_width()/2 + characterDistance, window_get_height() - 5);
	enemySlash++;
	if(enemySlash == 5)
	{	
		enemySlash = 0;
		global.enemyHit = false;
	}
}
//draw_sprite_stretched(spr_playerFW, 0, window_get_width()/2 - characterDistance, window_get_height() - characterPlacement, 70, 100);
//draw_sprite_stretched(global.enemyObject.sprite_index, 0, window_get_width()/2 + characterDistance, window_get_height() - characterPlacement, 70, 100);

if(alphaRange > 0)
{
	draw_sprite_stretched_ext(spr_fade, 0, 0, 0, display_get_width(), display_get_height(), c_black, alphaRange);
	alphaRange -= .012;
}
if(fade)
{
	draw_sprite_stretched_ext(spr_fade, 0, 0, 0, display_get_width(), display_get_height(), c_black, alphaRange);
	alphaRange += .018;	
}
if(alphaRange > 1.2 && lost)
{
	draw_set_halign(fa_center);
	draw_set_valign(fa_center);
	draw_text_transformed(window_get_width()/2, window_get_height()/2, "Game Over", 5, 5, 0);
}
if(alphaRange > 1.2)
{
	fadeDone = true;	
}
if(alphaRange > 1.9)
{
	gameOver = true;	
}
if(countdown && alphaRange <= 0)
{
	if(counter == 3)
	{
		draw_sprite(spr_countdown, 2, window_get_width()/2, window_get_height()/2);
	}
	else if(counter == 2)
	{
		draw_sprite(spr_countdown, 1, window_get_width()/2, window_get_height()/2);
	}
	else if(counter == 1)
	{
		draw_sprite(spr_countdown, 3, window_get_width()/2, window_get_height()/2);
	}
	if(doOnce)
	{
		alarm[0] = room_speed;
		doOnce = false;
	}
}
if(saved)
{
	draw_set_halign(fa_center);
	draw_set_valign(fa_center);
	draw_text_transformed(window_get_width()/2, window_get_height()/2, "Saved", 3, 3, 0);
	saveTime++;
	if(saveTime == 12)
	{
		saveTime = 0;
		saved = false;	
	}
}