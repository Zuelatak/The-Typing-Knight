/// @description Insert description here
// You can write your code in this editor
draw_set_color(c_black);
draw_text_transformed(x, y+3, word, 3, 3, 0);
draw_text_transformed(x, y-3, word, 3, 3, 0);
draw_text_transformed(x+3, y, word, 3, 3, 0);
draw_text_transformed(x-3, y, word, 3, 3, 0);
draw_set_color(c_white);
draw_text_transformed(x, y, word, 3, 3, 0);

//show_debug_message(keyboard_lastkey);
//show_debug_message(ord(string_upper(string_char_at(word, 0))));

