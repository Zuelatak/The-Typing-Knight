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
	Load()
	room_goto(global.roomLocation);
}
j = 0;
for(i = 0; i < array_length_1d(global.forestEnemies); i++)
{
	if(instance_exists(global.forestEnemies[i]))
	{
		if(global.forestEnemies[i].sprite_index == spr_wolfStill || global.forestEnemies[i].sprite_index == spr_wolfMoving)
		{
			global.forestCurrentList[j] = obj_wolf;
		}
		else
		{
			global.forestCurrentList[j] = obj_goblin;
		}
		global.forestCurrentList[j+1] = global.forestEnemies[i].x;
		global.forestCurrentList[j+2] = global.forestEnemies[i].y;
	}
	else
	{
	global.forestCurrentList[j] = 0;
	global.forestCurrentList[j+1] = 0;
	global.forestCurrentList[j+2] = 0;
	}
	j += 3;
}