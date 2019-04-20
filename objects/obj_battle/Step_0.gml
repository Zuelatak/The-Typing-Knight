/// @description Insert description here
// You can write your code in this editor
if(keyboard_check(vk_control))
{
	if(keyboard_check_pressed(ord("S")))
	{
		Save();
	}
	else if(keyboard_check_pressed(ord("L")))
	{
		if(file_text_open_read("\save.txt"))
		{
			global.freeze = true;
			alphaRange = 0;
			fade = true;
			loaded = true;
		}
	}
}
if(keyboard_check(vk_escape))
{
		room_goto(rm_title);
}

if(global.playerHealth <= 0 && fade == false)
{
	global.freeze = true;
	alphaRange = 0;
	fade = true;
	lost = true;
}
if(global.enemyHealth <= 0 && fade == false)
{
	global.freeze = true;
	alphaRange = 0;
	fade = true;
	if(global.enemyObject != obj_battleKnight)
	{
		global.victory = true;	
	}
}
if(fadeDone && !lost)
{
	audio_stop_sound(music_battle);
	global.freeze = false;
	global.words = 0;
	if(loaded)
	{
		Load();	
		room_goto(global.roomLocation);
	}
	else
	{
		global.wordList = 0;
		global.enemyHealth = 100;
		global.roomLocation = global.prevRoomLocation;
		room_goto(global.prevRoomLocation);
	}
}
else if(gameOver)
{
	audio_stop_sound(music_battle);
	global.freeze = false;
	global.words = 0;
	room_goto(rm_title);	
}
if(counter == 0 && countdown)
{
	countdown = false;
	global.freeze = false;
}