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
for(i = 0; i < array_length_1d(global.caveEnemies); i++)
{
	if(instance_exists(global.caveEnemies[i]))
	{
		if(global.caveEnemies[i].sprite_index == spr_spiderStill || global.caveEnemies[i].sprite_index == spr_spiderMoving)
		{
			global.caveCurrentList[j] = obj_spider;
		}
		else
		{
			global.caveCurrentList[j] = obj_slime;
		}
		global.caveCurrentList[j+1] = global.caveEnemies[i].x;
		global.caveCurrentList[j+2] = global.caveEnemies[i].y;
	}
	else
	{
		global.caveCurrentList[j] = 0;
		global.caveCurrentList[j+1] = 0;
		global.caveCurrentList[j+2] = 0;
	}
	j += 3;
}	