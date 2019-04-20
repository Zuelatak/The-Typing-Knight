/// @description Insert description here
// You can write your code in this editor
if(triggered)
{
	global.freeze = true;
	draw_sprite_stretched_ext(spr_fade, 0, 0, 0, display_get_width(), display_get_height(), c_black, alphaRange);
	alphaRange += .018;
}
if(alphaRange > 1.3)
{
	global.prevRoomLocation = global.roomLocation;
	global.roomLocation = goesTo;
	global.playerLocationX = playerX;
	global.playerLocationY = playerY;
	room_goto(goesTo);	
}
