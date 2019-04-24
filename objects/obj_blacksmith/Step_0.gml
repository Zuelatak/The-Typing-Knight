/// @description Insert description here
// You can write your code in this editor
InRange = ChatRange(InRange); 

if(InRange && max(gamepad_button_check(0, gp_face1), keyboard_check_pressed(ord("E")), 0) && !textboxCreated)
{
	global.freeze = true;
	textbox = instance_create_depth(x, y, -y, obj_textBox);
	textbox.portrait = spr_blacksmithPortrait;
	textbox.name = "Blacksmith";
	textbox.text[0] = "I'm sorry but my shop is under maintenance. Maybe it'll be done in a later build."
	textboxCreated = true;
} 
if(!instance_exists(obj_textBox))
{
	textboxCreated = false;	
}