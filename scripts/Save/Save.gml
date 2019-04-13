file = file_text_open_write("\save.txt");
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

//Battle
file_text_write_string(file, global.enemyDamage);
file_text_writeln(file);
file_text_write_string(file, global.enemyArmor);
file_text_writeln(file);
file_text_write_string(file, global.enemyHealth);
file_text_writeln(file);
file_text_write_string(file, global.enemySprite);
file_text_writeln(file);
for(i= global.wordPointer; i < array_length_1d(global.wordList); i++)
{
	show_debug_message(global.wordPointer);
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