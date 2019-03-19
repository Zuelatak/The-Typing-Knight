/// @description Insert description here
// You can write your code in this editor
word = instance_create_depth(x,y,-y,obj_word)
with(word)
{
	word = "test";	
}
wordList[wordCount] = word;
wordCount++;
alarm[0] = 100;