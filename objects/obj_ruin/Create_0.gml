/// @description Insert description here
// You can write your code in this editor
fade = false;
fadeDone = false;
alphaRange = 1;
frozen = true;
saved = false;
saveTime = 0;
global.ruinEnemies = 0;
if(global.ruinLoadCurrent)
{
	j = 0;
	for(i = 0; i < array_length_1d(global.ruinCurrentList); i+=3)
	{
		if(!global.ruinCurrentList[i] == 0)
		{
			global.ruinEnemies[j] = instance_create_depth(global.ruinCurrentList[i+1], global.ruinCurrentList[i+2], -global.ruinCurrentList[i+2], global.ruinCurrentList[i]);
		}
		j++;
	}
	global.ruinLoadCurrent = false;
}
else if(global.ruinEnemiesLoaded)
{ 
	j = 0;
	for(i = 0; i < array_length_1d(global.ruinEnemyList); i+=3)
	{
		global.ruinEnemies[j] = instance_create_depth(global.ruinEnemyList[i+1], global.ruinEnemyList[i+2], -global.ruinEnemyList[i+2], global.ruinEnemyList[i]);
		j++;
	}
	global.ruinEnemiesLoaded = false;
}
else
{
	global.ruinEnemyPointer = 0;
	global.ruinEnemies[0] = instance_create_depth(442, 338, -338, obj_lich);
	global.ruinEnemies[1] = instance_create_depth(262, 138, -138, obj_skeleton);
	global.ruinEnemies[2] = instance_create_depth(135, 319, -319, obj_skeleton);
	global.ruinEnemies[3] = instance_create_depth(290, 248, -248, obj_skeleton);
}