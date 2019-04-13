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
while(true)
{
	var temp = file_text_read_string(file);
	file_text_readln(file);
	if(temp == "-WordList-")
	{
		break;
	}
	posX = real(file_text_read_string(file));
	file_text_readln(file);
	posY = real(file_text_read_string(file));
	file_text_readln(file);
	word = instance_create_depth(posX, posY, -posY, obj_word)
	with(word)
	{
		word = temp;	
	}
	global.wordList[global.wordCount] = word;
	global.wordCount++;
}

file_text_close(file);	

room_goto(global.roomLocation);
}