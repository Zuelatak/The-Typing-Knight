/// @description Insert description here
// You can write your code in this editor
if(InRange && max(gamepad_button_check(0, gp_face1), keyboard_check_pressed(ord("E")), 0))
{
	global.prevRoomLocation = global.roomLocation;
	global.roomLocation = rm_battle;
	global.enemySprite = spr_knightFW;
	global.enemyArmor = 0;
	global.enemyDamage = 5;
    room_goto(rm_battle);
} 
