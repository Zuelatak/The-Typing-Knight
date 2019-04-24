/// @description Insert description here
// You can write your code in this editor

if(!audio_is_playing(global.currentSong))
{
	global.currentSong = global.songList[random(array_length_1d(global.songList))];
	audio_play_sound(global.currentSong, 0, false);	
}