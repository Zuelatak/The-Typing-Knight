/// @description Insert description here
// You can write your code in this editor

if(keyboard_check(vk_control))
{
	if(keyboard_check_pressed(ord("S")))
	{
		saved = true;
		Save();
	}
	else if(keyboard_check_pressed(ord("L")))
	{
		if(file_text_open_read("\save.txt"))
		{
			fade = true;	
		}
	}
}
if(keyboard_check(vk_escape))
{
	room_goto(rm_title);
}
if(fadeDone)
{
	global.freeze = true;
	Load();
	room_goto(global.roomLocation);
}
if(!audio_is_playing(global.currentSong))
{
	global.currentSong = global.songList[random(array_length_1d(global.songList))];
	audio_play_sound(global.currentSong, 0, false);	
}