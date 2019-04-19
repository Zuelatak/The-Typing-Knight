/// @description Insert description here
// You can write your code in this editor
if(word == "-")
{
	instance_destroy();
}
if(global.freeze)
{
	speed = 0;	
}
else
{
	speed = wordSpeed;	
}