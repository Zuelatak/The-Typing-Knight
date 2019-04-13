/// @description Insert description here
// You can write your code in this editor
if(global.wordPointer < global.wordCount)
{
	if(global.wordList[global.wordPointer].x < -20)
	{
		global.wordList[global.wordPointer].word = "-";
		global.wordPointer ++;
		global.playerHealth = global.playerHealth - global.enemyDamage*2 + global.playerArmor;
	}
	if(keyboard_check_pressed(ord(string_upper(string_char_at(global.wordList[global.wordPointer].word, 0)))))
	{
		if(string_length(global.wordList[global.wordPointer].word) = 1)
		{
			global.wordList[global.wordPointer].word = "-";
			global.wordPointer ++;
			global.enemyHealth = global.enemyHealth - global.playerDamage + global.enemyArmor;
		}
		else
		{
			global.wordList[global.wordPointer].word = string_copy(global.wordList[global.wordPointer].word, 2, string_length(global.wordList[global.wordPointer].word));
		}
	}
	else if keyboard_check_pressed(vk_anykey)
	{
		global.playerHealth = global.playerHealth - global.enemyDamage + global.playerArmor;
	}
}

