/// @description Insert description here
// You can write your code in this editor
range = random_range(-wordSpawnRange,wordSpawnRange);
//range = 190;
dictionary = ["This", "is", "a", "test", "sentence"];
var randomWord = dictionary[random(array_length_1d(dictionary))];
word = instance_create_depth(x, y+range, -y-range, obj_word)
with(word)
{
	word = randomWord;	
}
wordList[wordCount] = word;
wordCount++;
alarm[0] = wordSpawnRate;