/// @description Insert description here
// You can write your code in this editor
if(fadeDone)
{
	global.freeze = false
	global.prevRoomLocation = global.roomLocation;
	global.roomLocation = rm_battle;
	global.enemyObject = obj_battleWolf;
	global.enemyArmor = 0;
	global.enemyDamage = 5;
	global.battleDifficulty = global.overallDifficulty
    room_goto(rm_battle);
}
