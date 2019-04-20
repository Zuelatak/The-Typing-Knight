/// @description Insert description here
// You can write your code in this editor
InRange = ChatRange(InRange); 

if(InRange && max(gamepad_button_check(0, gp_face1), keyboard_check_pressed(ord("E")), 0) && !textboxCreated)
{
	textbox = instance_create_depth(x, y, -y, obj_textBox);
	textbox.portrait = spr_priestPortrait;
	textbox.name = "Priest";
	textbox.text[0] = "Are you injured? Would you like some healing?"
	textbox.text[1] = ""
	textbox.yesorno[1] = true;
	textboxCreated = true;
} 
if(textboxCreated && textbox.yes)
{
	global.playerHealth = 100;
	instance_destroy(textbox);
	textboxCreated = false;
}
if(textboxCreated && textbox.no)
{
	instance_destroy(textbox);	
	textboxCreated = false;
}