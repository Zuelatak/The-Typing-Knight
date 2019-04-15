/// @description Insert description here
// You can write your code in this editor
wordSpeed = 0;
wordSpawnRate = 0;
wordSpawnRange = 0;
wordCount = 0;
wordPointer = 0;

alarm[0] = 1;

for(i = 0; i < array_length_1d(global.words); i+=3)
{

	wordObj = instance_create_depth(global.words[i+1], global.words[i+2], -global.words[i+2], obj_word)
	var wordString = global.words[i];
	with(wordObj)
	{
		word = wordString;
	}
	wordList[wordCount] = wordObj;
	wordCount++;
}
global.words = 0;