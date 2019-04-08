/// @description Insert description here
// You can write your code in this editor
if(wordPointer < wordCount)
{
	if(wordList[wordPointer].x < -20)
	{
		wordList[wordPointer].word = "-";
		wordPointer ++;
		global.playerHealth = global.playerHealth - global.enemyDamage*2 + global.playerArmor;
	}
	if(keyboard_check_pressed(ord(string_upper(string_char_at(wordList[wordPointer].word, 0)))))
	{
		if(string_length(wordList[wordPointer].word) = 1)
		{
			wordList[wordPointer].word = "-";
			wordPointer ++;
			show_debug_message("");
			show_debug_message(global.enemyHealth);
			show_debug_message(global.playerDamage);
			show_debug_message(global.enemyArmor);
			global.enemyHealth = global.enemyHealth - global.playerDamage + global.enemyArmor;
			show_debug_message(global.enemyHealth);
		}
		else
		{
			wordList[wordPointer].word = string_copy(wordList[wordPointer].word, 2, string_length(wordList[wordPointer].word));
		}
	}
	else if keyboard_check_pressed(vk_anykey)
	{
		global.playerHealth = global.playerHealth - global.enemyDamage + global.playerArmor;
	}
}

