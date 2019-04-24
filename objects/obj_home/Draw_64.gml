/// @description Insert description here
// You can write your code in this editor
if(alphaRange > 0)
{
	draw_sprite_stretched_ext(spr_fade, 0, 0, 0, display_get_width(), display_get_height(), c_black, alphaRange);
	alphaRange -= .012;
}
if(alphaRange < 0 && frozen)
{
	frozen = false;
	global.freeze = false;
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