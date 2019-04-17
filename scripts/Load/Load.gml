file = file_text_open_read("\save.txt");
if(file != -1)
{
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

	//Enemy
	global.enemyDamage = real(file_text_read_string(file));
	file_text_readln(file);
	global.enemyArmor = real(file_text_read_string(file));
	file_text_readln(file);
	global.enemyHealth = real(file_text_read_string(file));
	file_text_readln(file);
	global.enemySprite = real(file_text_read_string(file));
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