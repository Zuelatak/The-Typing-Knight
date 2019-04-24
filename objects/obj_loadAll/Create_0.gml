/// @description Insert description here
// You can write your code in this editor
randomize();
LoadDifficulties();

//Music
global.songList[0] = music_travel;
global.songList[1] = music_travel2;

global.currentSong = global.songList[random(array_length_1d(global.songList))];
audio_play_sound(global.currentSong, 0, false);	
global.firstSong = false;

room_goto(rm_title);