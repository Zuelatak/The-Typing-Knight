/// @description Insert description here
// You can write your code in this editor
fade = false;
fadeDone = false;
alphaRange = 1;
frozen = true;
saved = false;
saveTime = 0;

global.freeze = true;
textbox = instance_create_depth(x, y, -y, obj_textBox);
textbox.portrait = spr_playerPortrait;
textbox.name = "Player";
textbox.text[0] = "Today's the day! I'm now of the age that I can become a knight. I should go talk to the town lord."