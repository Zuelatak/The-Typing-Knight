/// @description Insert description here
// You can write your code in this editor
if(InRange && max(gamepad_button_check(0, gp_face1), keyboard_check_pressed(ord("E")), 0))
{
	global.prevRoomLocation = global.roomLocation;
	global.roomLocation = rm_battle;
	global.battleSprite = spr_knightFW;
    room_goto(rm_battle);
} 
