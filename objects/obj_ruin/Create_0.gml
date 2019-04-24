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
	global.ruinEnemies[0] = instance_create_depth(760, 308, -308, obj_lich);
	global.ruinEnemies[1] = instance_create_depth(600, 108, -108, obj_skeleton);
	global.ruinEnemies[2] = instance_create_depth(341, 56, -56, obj_skeleton);
	global.ruinEnemies[3] = instance_create_depth(126, 431, -431, obj_skeleton);
	global.ruinEnemies[4] = instance_create_depth(424, 423, -423, obj_skeleton);
	global.ruinEnemies[5] = instance_create_depth(330, 270, -270, obj_skeleton);
	global.ruinEnemies[6] = instance_create_depth(614, 382, -362, obj_skeleton);
}