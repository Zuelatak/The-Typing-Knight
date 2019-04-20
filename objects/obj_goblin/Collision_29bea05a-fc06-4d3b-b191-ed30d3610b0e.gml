/// @description Insert description here
// You can write your code in this editor
fade = true;
global.freeze = true;
global.forestLoadCurrent = true;
for(i = 0; i < array_length_1d(global.forestEnemies); i+=3)
	{
	if(instance_exists(global.forestEnemies[i]))
	{
		if(global.forestEnemies[i].sprite_index == spr_wolfStill || global.forestEnemies[i].sprite_index == spr_wolfMoving)
		{
			global.forestCurrentList[i] = obj_wolf;
		}
		else
		{
			global.forestCurrentList[i] = obj_goblin;
		}
		global.forestCurrentList[i+1] = global.forestEnemies[i].x;
		global.forestCurrentList[i+2] = global.forestEnemies[i].y;
	}
}