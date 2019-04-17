/// @description Insert description here
// You can write your code in this editor
range = random_range(-wordSpawnRange,wordSpawnRange);
//range = 190;
dictionary = ["This", "is", "a", "test", "sentence", "here", "are", "some", "more", "words", 
"have", "fun", "hello"];
var randomWord = string_upper(dictionary[random(array_length_1d(dictionary))]);
word = instance_create_depth(x, y+range, -y-range, obj_word)
with(word)
{
	word = randomWord;	
}
global.wordList[global.wordCount] = word;
global.wordCount++;
alarm[0] = wordSpawnRate;