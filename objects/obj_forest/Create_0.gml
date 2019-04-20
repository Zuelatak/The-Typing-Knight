/// @description Insert description here
// You can write your code in this editor
fade = false;
fadeDone = false;
alphaRange = 1;
frozen = true;
global.forestEnemies = 0;
if(global.forestLoadCurrent)
{
	j = 0;
	for(i = 0; i < array_length_1d(global.forestCurrentList); i+=3)
	{
		if(!global.forestCurrentList[i] == 0)
		{
			global.forestEnemies[j] = instance_create_depth(global.forestCurrentList[i+1], global.forestCurrentList[i+2], -global.forestCurrentList[i+2], global.forestCurrentList[i]);
		}
		j++;
	}
	global.forestLoadCurrent = false;
}
else if(global.forestEnemiesLoaded)
{ 
	j = 0;
	for(i = 0; i < array_length_1d(global.forestEnemyList); i+=3)
	{
		global.forestEnemies[j] = instance_create_depth(global.forestEnemyList[i+1], global.forestEnemyList[i+2], -global.forestEnemyList[i+2], global.forestEnemyList[i]);
		j++;
	}
	global.forestEnemiesLoaded = false;
}
else
{
	global.forestEnemyPointer = 0;
	global.forestEnemies[0] = instance_create_depth(107, 306, -306, obj_wolf);
	global.forestEnemies[1] = instance_create_depth(232, 138, -138, obj_wolf);
	global.forestEnemies[2] = instance_create_depth(379, 357, -357, obj_wolf);
	global.forestEnemies[3] = instance_create_depth(400, 52, -32, obj_goblin);
	global.forestEnemies[4] = instance_create_depth(266, 213, -213, obj_goblin);
	global.forestEnemies[5] = instance_create_depth(36, 184, -144, obj_goblin);
	global.forestEnemies[6] = instance_create_depth(553, 390, -360, obj_goblin);	
}