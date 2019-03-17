box = spr_Textbox;
frame = Portrait_Frame;
portrait = Portraits;
namebox = spr_Namebox;

boxWidth = sprite_get_width(box);
boxHeight = sprite_get_height(box);
portWidth = sprite_get_width(portrait);
portHeight = sprite_get_height(portrait);
nameboxWidth = sprite_get_width(namebox);
nameboxHeight = sprite_get_height(namebox);

portX = (window_get_width() - boxWidth - portWidth) / 2;
portY = (display_get_gui_height()*.98) - portHeight;
boxX = portX + portWidth;
boxY = portY;
nameboxX = portX;
nameboxY = boxY - nameboxHeight;
