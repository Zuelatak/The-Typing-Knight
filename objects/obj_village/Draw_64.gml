/// @description Insert description here
// You can write your code in this editor
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
if(alphaRange > 1.3)
{
	fadeDone = true;	
}