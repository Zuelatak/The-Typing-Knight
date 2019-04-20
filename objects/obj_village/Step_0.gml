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
		if(file_text_open_read("\save.txt"))
		{
			fade = true;	
		}
	}
}
if(keyboard_check(vk_escape))
{
	room_goto(rm_title);
}
if(fadeDone)
{
	global.freeze = true;
	Load();
	room_goto(global.roomLocation);
}
