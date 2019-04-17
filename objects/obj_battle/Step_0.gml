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
			alphaRange = 0;
			fade = true;
			loaded = true;
		}
	}
}
if(keyboard_check(vk_escape))
{
		room_goto(rm_title);
}

if(global.playerHealth <= 0)
{
	global.words = 0;
	room_goto(rm_title);	
}
if(global.enemyHealth <= 0 && fade == false)
{
	alphaRange = 0;
	fade = true;
}
if(fadeDone)
{
	global.words = 0;
	if(loaded)
	{
		Load();	
		room_goto(global.roomLocation);
	}
	else
	{
		global.enemyHealth = 100;
		global.roomLocation = global.prevRoomLocation;
		room_goto(global.prevRoomLocation);
	}
}