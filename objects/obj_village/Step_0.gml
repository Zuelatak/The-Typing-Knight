/// @description Insert description here
// You can write your code in this editor

if(keyboard_check(vk_control))
{
	if(keyboard_check_pressed(ord("S")))
	{
		Save();
	}
	else if(keyboard_check_pressed(ord("L")))
	{
		Load();
	}
}
if(keyboard_check(vk_escape))
{
		room_goto(rm_title);
}