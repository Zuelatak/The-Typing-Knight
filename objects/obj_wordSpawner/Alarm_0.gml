/// @description Insert description here
// You can write your code in this editor
range = random_range(-190,190);
//range = 190;
word = instance_create_depth(x,y+range,-y-range,obj_word)
with(word)
{
	word = "test";	
}
wordList[wordCount] = word;
wordCount++;
alarm[0] = 100;