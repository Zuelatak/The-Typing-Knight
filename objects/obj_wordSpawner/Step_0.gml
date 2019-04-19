/// @description Insert description here
// You can write your code in this editor
if(!global.freeze)
{
	if(wordPointer < wordCount)
	{
		if(global.wordList[wordPointer].x < -20)
		{
			global.wordList[wordPointer].word = "-";
			wordPointer ++;
			global.playerHealth = global.playerHealth - global.enemyDamage*2 + global.playerArmor;
			audio_play_sound(sound_slash, 10, false);
		}
	
		if(keyboard_check(vk_control)) { }
	
		else if(keyboard_check_pressed(ord(string_upper(string_char_at(global.wordList[wordPointer].word, 0)))))
		{
			if(string_length(global.wordList[wordPointer].word) = 1)
			{
				global.wordList[wordPointer].word = "-";
				wordPointer ++;
				global.enemyHealth = global.enemyHealth - global.playerDamage + global.enemyArmor;
				audio_play_sound(sound_slash, 10, false);
			}
			else
			{
				global.wordList[wordPointer].word = string_copy(global.wordList[wordPointer].word, 2, string_length(global.wordList[wordPointer].word));
			}
		}
		else if keyboard_check_pressed(vk_anykey)
		{
			global.playerHealth = global.playerHealth - global.enemyDamage + global.playerArmor;
			audio_play_sound(sound_slash, 10, false);
		}
	}
	global.wordPointer = wordPointer;
}
