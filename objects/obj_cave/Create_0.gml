/// @description Insert description here
// You can write your code in this editor
fade = false;
fadeDone = false;
alphaRange = 1;
frozen = true;
saved = false;
saveTime = 0;
global.caveEnemies = 0;
if(global.caveLoadCurrent)
{
	j = 0;
	for(i = 0; i < array_length_1d(global.caveCurrentList); i+=3)
	{
		if(!global.caveCurrentList[i] == 0)
		{
			global.caveEnemies[j] = instance_create_depth(global.caveCurrentList[i+1], global.caveCurrentList[i+2], -global.caveCurrentList[i+2], global.caveCurrentList[i]);
		}
		j++;
	}
	global.caveLoadCurrent = false;
}
else if(global.caveEnemiesLoaded)
{ 
	j = 0;
	for(i = 0; i < array_length_1d(global.caveEnemyList); i+=3)
	{
		global.caveEnemies[j] = instance_create_depth(global.caveEnemyList[i+1], global.caveEnemyList[i+2], -global.caveEnemyList[i+2], global.caveEnemyList[i]);
		j++;
	}
	global.caveEnemiesLoaded = false;
}
else
{
	global.caveEnemyPointer = 0;
	global.caveEnemies[0] = instance_create_depth(150, 98, -98, obj_spider);
	global.caveEnemies[1] = instance_create_depth(343, 278, -278, obj_spider);
	global.caveEnemies[2] = instance_create_depth(93, 273, -273, obj_slime);
	global.caveEnemies[3] = instance_create_depth(312, 116, -116, obj_slime);
}