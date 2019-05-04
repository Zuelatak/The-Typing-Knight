/// @description Insert description here
// You can write your code in this editor
draw_sprite(spr_no, sprite, x, y);

if(position_meeting(window_mouse_get_x(), window_mouse_get_y(), id) && mouse_check_button_pressed(mb_left))
{
	sprite = 1;
}

if(!position_meeting(window_mouse_get_x(), window_mouse_get_y(), id) && !keyboard_check(ord("N")))
{
	sprite = 0;
}