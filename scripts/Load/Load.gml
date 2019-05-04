file = file_text_open_read("\save.txt");
if(file != -1)
{
	//Quests
	global.endQuest = real(file_text_read_string(file));
	file_text_readln(file);
	
	//Player
	global.playerLocationX = real(file_text_read_string(file));
	file_text_readln(file);
	global.playerLocationY = real(file_text_read_string(file));
	file_text_readln(file);
	global.playerHealth = real(file_text_read_string(file));
	file_text_readln(file);
	global.playerArmor = real(file_text_read_string(file));
	file_text_readln(file);
	global.playerDamage = real(file_text_read_string(file));
	file_text_readln(file);
	global.roomLocation = real(file_text_read_string(file));
	file_text_readln(file);
	global.prevRoomLocation = real(file_text_read_string(file));
	file_text_readln(file);
	global.playerDirection = real(file_text_read_string(file));
	file_text_readln(file);
	i = 0;
	//Forest
	while(true)
	{
		var temp = file_text_read_string(file);
		file_text_readln(file);
		if(temp == "-ForestEnemies-")
		{
			break;
		}
		global.forestEnemyList[i] = real(temp);
		posX = real(file_text_read_string(file));
		file_text_readln(file);
		i++;
		global.forestEnemyList[i] = posX;
		posY = real(file_text_read_string(file));
		file_text_readln(file);
		i++;
		global.forestEnemyList[i] = posY;
		i++;
	}
	if(i != 0)
	{
		global.forestEnemiesLoaded = true;
	}
	
	//Cave
	while(true)
	{
		var temp = file_text_read_string(file);
		file_text_readln(file);
		if(temp == "-CaveEnemies-")
		{
			break;
		}
		global.caveEnemyList[i] = real(temp);
		posX = real(file_text_read_string(file));
		file_text_readln(file);
		i++;
		global.caveEnemyList[i] = posX;
		posY = real(file_text_read_string(file));
		file_text_readln(file);
		i++;
		global.caveEnemyList[i] = posY;
		i++;
	}
	if(i != 0)
	{
		global.caveEnemiesLoaded = true;
	}
		
	//Ruin
	while(true)
	{
		var temp = file_text_read_string(file);
		file_text_readln(file);
		if(temp == "-RuinEnemies-")
		{
			break;
		}
		global.ruinEnemyList[i] = real(temp);
		posX = real(file_text_read_string(file));
		file_text_readln(file);
		i++;
		global.ruinEnemyList[i] = posX;
		posY = real(file_text_read_string(file));
		file_text_readln(file);
		i++;
		global.ruinEnemyList[i] = posY;
		i++;
	}
	if(i != 0)
	{
		global.ruinEnemiesLoaded = true;
	}
	
	//Enemy
	global.enemyDamage = real(file_text_read_string(file));
	file_text_readln(file);
	global.enemyArmor = real(file_text_read_string(file));
	file_text_readln(file);
	global.enemyHealth = real(file_text_read_string(file));
	file_text_readln(file);
	global.enemyBattleObject = real(file_text_read_string(file));
	file_text_readln(file);
	global.enemyObject = real(file_text_read_string(file));
	file_text_readln(file);
	global.overallDifficulty = real(file_text_read_string(file));
	file_text_readln(file);
	global.battleDifficulty = real(file_text_read_string(file));
	file_text_readln(file);
	i = 0;
	while(true)
	{
		var temp = file_text_read_string(file);
		file_text_readln(file);
		if(temp == "-WordList-")
		{
			break;
		}
		global.words[i] = temp;
		posX = real(file_text_read_string(file));
		file_text_readln(file);
		i++;
		global.words[i] = posX;
		posY = real(file_text_read_string(file));
		file_text_readln(file);
		i++;
		global.words[i] = posY;
		i++;
	}

	file_text_close(file);	
	return 1;
}
return 0;