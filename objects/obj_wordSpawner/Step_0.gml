/// @description Insert description here
// You can write your code in this editor
if(keyboard_check_pressed(ord(string_upper(string_char_at(wordList[0].word, 0)))))
{
	if(string_length(wordList[0].word) = 1)
	{
		wordList[0].word = "";
		array_copy(wordList, 0, wordList, 1, wordCount);
		wordCount--;
	}
	else
	{
		wordList[0].word = string_copy(wordList[0].word, 2, string_length(wordList[0].word));
	}
}
