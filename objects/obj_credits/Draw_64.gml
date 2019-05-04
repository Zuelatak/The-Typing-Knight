/// @description Insert description here
// You can write your code in this editor
draw_set_halign(fa_center);

draw_text_transformed(window_get_width()/2, window_get_height()-scroll, "CREDITS", 3, 3, 0);
draw_text_transformed(window_get_width()/2, window_get_height()+100-scroll, "ART BY KAT TOWNSEND", 3, 3, 0);
draw_text_transformed(window_get_width()/2, window_get_height()+200-scroll, "PROGRAMMING DONE BY BRANDON RECCE", 3, 3, 0);
draw_text_transformed(window_get_width()/2, window_get_height()+300-scroll, "MUSIC FROM BENSOUND", 3, 3, 0);
draw_text_transformed(window_get_width()/2, window_get_height()+400-scroll, "MENU BUTTON FROM JULIUS_GALLA @ FREESOUND", 3, 3, 0);
draw_text_transformed(window_get_width()/2, window_get_height()+500-scroll, "SLASH SOUND FROM ABYSSMAL @ FREESOUND", 3, 3, 0);
draw_text_transformed(window_get_width()/2, window_get_height()+800-scroll, "AND A SPECIAL THANKS TO YOU FOR PLAYING", 3, 3, 0);
draw_text_transformed(window_get_width()/2, window_get_height()+900-scroll, "WE HOPE YOU ENJOYED", 3, 3, 0);

if(scroll > 1900)
{
	room_goto(rm_title);
}

scroll = scroll + 3;