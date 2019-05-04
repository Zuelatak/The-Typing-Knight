/// @description Insert description here
// You can write your code in this editor
InRange = ChatRange(InRange); 

if(InRange && max(gamepad_button_check(0, gp_face1), keyboard_check_pressed(ord("E")), 0) && !textboxCreated)
{
	global.freeze = true;
	textbox = instance_create_depth(x, y, -y, obj_textBox);
	textbox.portrait = spr_noblePortrait;
	textbox.name = "Noble";
	textbox.text[0] = "So you're ready to become a knight are you? Very well. First I'll need to prove yourself to me. Kill the Lich to the east and you can become a knight of my village. However, I suggest you fight the creature in the forest to the east or the creatures in the cave to the north first.";
	textbox.text[1] = "You can also get some practice with the other knights in the village. Would you like me to explain how to fight?";
	textbox.text[2] = "";
	textbox.yesorno[1] = true;
	textbox.yesorno[2] = false;
	textboxCreated = true;
} 
if(!instance_exists(obj_textBox))
{
	textboxCreated = false;	
}
if(textboxCreated && textbox.yes)
{
	textbox.yes = false;
	textbox.text[2] = "During combat words go across the screen. Type out the words in order to deal damage. Hit the wrong key you'll take damage. If a word goes all the way across the screen or you hit backspace to delete the current word you'll take double damage. Good luck!";
}
if(textboxCreated && textbox.no)
{
	textbox.no = false;
	textbox.text[2] = "Alright good luck then!";
}
