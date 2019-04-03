/// @description Insert description here
// You can write your code in this editor
draw_set_halign(fa_center);
draw_text(window_get_width()/2 - characterDistance, window_get_height() - characterPlacement, "HP: " + string(global.playerHealth) + "/100");
draw_text(window_get_width()/2 + characterDistance, window_get_height() - characterPlacement, "HP: " + string(global.enemyHealth) + "/100");