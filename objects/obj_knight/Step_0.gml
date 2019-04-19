/// @description Insert description here
// You can write your code in this editor
InRange = ChatRange(InRange);

if(InRange && max(gamepad_button_check(0, gp_face1), keyboard_check_pressed(ord("E")), 0) && !instance_exists(obj_textBox) && !fade)
{
	textbox = instance_create_depth(x, y, -y, obj_textBox);
	textbox.portrait = spr_knightPortrait;
	textbox.name = "Knight";
	textbox.text[0] = "Hello there! Would you like to train?"
	textbox.text[1] = ""
	textbox.yesorno[1] = true;
} 
if(instance_exists(obj_textBox) && textbox.yes)
{
	global.freeze = true;
	fade = true;
	instance_destroy(textbox);
}
if(instance_exists(obj_textBox) && textbox.no)
{
	instance_destroy(textbox);	
}
if(fadeDone)
{
	global.prevRoomLocation = global.roomLocation;
	global.roomLocation = rm_battle;
	global.enemyBattleObject = obj_battleKnight;
	global.enemyObject = obj_knight;
	global.enemyArmor = 0;
	global.enemyDamage = 5;
	global.battleDifficulty = global.overallDifficulty;
    room_goto(rm_battle);
}

