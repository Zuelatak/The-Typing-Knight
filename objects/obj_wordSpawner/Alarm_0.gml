/// @description Insert description here
// You can write your code in this editor
range = random_range(-wordSpawnRange,wordSpawnRange);
//range = 190;
var randomWord = string_upper(global.difficulties[global.battleDifficulty,random(array_length_2d(global.difficulties, global.battleDifficulty))]);
word = instance_create_depth(x, y+range, -y-range, obj_word)
with(word)
{
	word = randomWord;	
}
global.wordList[wordCount] = word;
//global.words[wordCount] = word;
wordCount++;
alarm[0] = wordSpawnRate;