/// @description Insert description here
// You can write your code in this editor
//draw_set_halign(fa_center);





draw_text(window_get_width()/2 - characterDistance, window_get_height() - characterPlacement - 30, "HP: " + string(global.playerHealth) + "/100");
draw_text(window_get_width()/2 + characterDistance, window_get_height() - characterPlacement - 30, "HP: " + string(global.enemyHealth) + "/100");

draw_sprite_stretched(spr_playerFW, 0, window_get_width()/2 - characterDistance, window_get_height() - characterPlacement, 70, 100);
draw_sprite_stretched(global.enemySprite, 0, window_get_width()/2 + characterDistance, window_get_height() - characterPlacement, 70, 100);

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
	draw_text_transformed(window_get_width()/2, window_get_height()/2, "Game Over", 5, 5, 0);
	draw_set_halign(fa_center);
	draw_set_valign(fa_center);
}
if(alphaRange > 1.2)
{
	fadeDone = true;	
}
if(alphaRange > 1.9)
{
	gameOver = true;	
}