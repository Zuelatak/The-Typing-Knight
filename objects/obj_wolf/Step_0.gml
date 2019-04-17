/// @description Insert description here
// You can write your code in this editor
if(fadeDone)
{
	global.prevRoomLocation = global.roomLocation;
	global.roomLocation = rm_battle;
	global.enemySprite = spr_wolf;
	global.enemyArmor = 0;
	global.enemyDamage = 5;
	global.battleDifficulty = global.overallDifficulty;
    room_goto(rm_battle);
}
