/// @description Insert description here
// You can write your code in this editor
if(keyboard_check(vk_control))
{
	if(keyboard_check_pressed(ord("S")))
	{
		saved = true;
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
for(i = 0; i < array_length_1d(global.ruinEnemies); i++)
{
	if(instance_exists(global.ruinEnemies[i]))
	{
		if(global.ruinEnemies[i].sprite_index == spr_skeletonStill || global.ruinEnemies[i].sprite_index == spr_skeletonMoving)
		{
			global.ruinCurrentList[j] = obj_skeleton;
		}
		else
		{
			global.ruinCurrentList[j] = obj_lich;
		}
		global.ruinCurrentList[j+1] = global.ruinEnemies[i].x;
		global.ruinCurrentList[j+2] = global.ruinEnemies[i].y;
	}
	else
	{
		global.ruinCurrentList[j] = 0;
		global.ruinCurrentList[j+1] = 0;
		global.ruinCurrentList[j+2] = 0;
	}
	j += 3;
}	