/// @description Insert description here
// You can write your code in this editor
InRange = ChatRange(InRange);

if(InRange && max(gamepad_button_check(0, gp_face1), keyboard_check_pressed(ord("E")), 0))
{
	fade = true;
} 
if(fadeDone)
{
	global.prevRoomLocation = global.roomLocation;
	global.roomLocation = rm_battle;
	global.enemyObject = obj_battleKnight;
	global.enemyArmor = 0;
	global.enemyDamage = 5;
	global.battleDifficulty = global.overallDifficulty;
    room_goto(rm_battle);
}
