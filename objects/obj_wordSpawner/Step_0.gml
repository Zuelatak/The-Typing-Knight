/// @description Insert description here
// You can write your code in this editor
if(wordPointer < wordCount)
{
	if(keyboard_check_pressed(ord(string_upper(string_char_at(wordList[wordPointer].word, 0)))))
	{
		if(string_length(wordList[wordPointer].word) = 1)
		{
			wordList[wordPointer].word = "";
			//array_copy(wordList, 0, wordList, 1, wordCount);
			wordPointer ++;
			//wordCount--;
		}
		else
		{
			wordList[wordPointer].word = string_copy(wordList[wordPointer].word, 2, string_length(wordList[wordPointer].word));
		}
	}
}
