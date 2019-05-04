file = file_text_open_write("\save.txt");
//Quests
file_text_write_string(file, global.endQuest);
file_text_writeln(file);

//Player
file_text_write_string(file, global.playerLocationX);
file_text_writeln(file);
file_text_write_string(file, global.playerLocationY);
file_text_writeln(file);
file_text_write_string(file, global.playerHealth);
file_text_writeln(file);
file_text_write_string(file, global.playerArmor);
file_text_writeln(file);
file_text_write_string(file, global.playerDamage);
file_text_writeln(file);
file_text_write_string(file, global.roomLocation);
file_text_writeln(file);
file_text_write_string(file, global.prevRoomLocation);
file_text_writeln(file);
file_text_write_string(file, global.playerDirection);
file_text_writeln(file);

//Forest
for(i = 0; i < array_length_1d(global.forestEnemies); i++)
{
	if(instance_exists(global.forestEnemies[i]))
	{
		if(global.forestEnemies[i].sprite_index == spr_wolfStill || global.forestEnemies[i].sprite_index == spr_wolfMoving)
		{
			file_text_write_string(file, obj_wolf);
		}
		else
		{
			file_text_write_string(file, obj_goblin);
		}
		
		file_text_writeln(file);
		file_text_write_string(file, global.forestEnemies[i].x);
		file_text_writeln(file);
		file_text_write_string(file, global.forestEnemies[i].y);
		file_text_writeln(file);
	}
}
file_text_write_string(file, "-ForestEnemies-");
file_text_writeln(file);

//Cave
for(i = 0; i < array_length_1d(global.caveEnemies); i++)
{
	if(instance_exists(global.caveEnemies[i]))
	{
		if(global.caveEnemies[i].sprite_index == spr_spiderStill || global.caveEnemies[i].sprite_index == spr_spiderMoving)
		{
			file_text_write_string(file, obj_spider);
		}
		else
		{
			file_text_write_string(file, obj_slime);
		}
		
		file_text_writeln(file);
		file_text_write_string(file, global.caveEnemies[i].x);
		file_text_writeln(file);
		file_text_write_string(file, global.caveEnemies[i].y);
		file_text_writeln(file);
	}
}
file_text_write_string(file, "-CaveEnemies-");
file_text_writeln(file);

//Ruin
for(i = 0; i < array_length_1d(global.ruinEnemies); i++)
{
	if(instance_exists(global.ruinEnemies[i]))
	{
		if(global.ruinEnemies[i].sprite_index == spr_skeletonStill || global.ruinEnemies[i].sprite_index == spr_skeletonMoving)
		{
			file_text_write_string(file, obj_skeleton);
		}
		else
		{
			file_text_write_string(file, obj_lich);
		}
		
		file_text_writeln(file);
		file_text_write_string(file, global.ruinEnemies[i].x);
		file_text_writeln(file);
		file_text_write_string(file, global.ruinEnemies[i].y);
		file_text_writeln(file);
	}
}
file_text_write_string(file, "-RuinEnemies-");
file_text_writeln(file);

//Battle
file_text_write_string(file, global.enemyDamage);
file_text_writeln(file);
file_text_write_string(file, global.enemyArmor);
file_text_writeln(file);
file_text_write_string(file, global.enemyHealth);
file_text_writeln(file);
file_text_write_string(file, global.enemyBattleObject);
file_text_writeln(file);
file_text_write_string(file, global.enemyObject);
file_text_writeln(file);
file_text_write_string(file, global.overallDifficulty);
file_text_writeln(file);
file_text_write_string(file, global.battleDifficulty);
file_text_writeln(file);
for(i= global.wordPointer; i < array_length_1d(global.wordList); i++)
{
	file_text_write_string(file, global.wordList[i].word);
	file_text_writeln(file);
	file_text_write_string(file, global.wordList[i].x);
	file_text_writeln(file);
	file_text_write_string(file, global.wordList[i].y);
	file_text_writeln(file);
}
file_text_write_string(file, "-WordList-");
file_text_writeln(file);
file_text_close(file);