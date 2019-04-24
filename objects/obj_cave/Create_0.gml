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
	//global.caveEnemies[0] = instance_create_depth(512, 55, -55, obj_spider);
	//global.caveEnemies[5] = instance_create_depth(294, 248, -248, obj_slime);
}