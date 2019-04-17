/// @description Insert description here
// You can write your code in this editor
InRange = ChatRange(InRange); 

if(InRange && max(gamepad_button_check(0, gp_face1), keyboard_check_pressed(ord("E")), 0))
{
	global.playerHealth = 100;
} 
