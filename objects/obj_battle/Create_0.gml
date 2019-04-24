fade = false;
fadeDone = false;
alphaRange = 1;
loaded = false;
gameOver = false;
lost = false;
countdown = true;
counter = 3;
global.freeze = true;
doOnce = true;
playerSlash = 0;
enemySlash = 0;

var Spawner = instance_create_depth(room_width, wordSpawnerYAxis, wordSpawnerYAxis, obj_wordSpawner);

with(Spawner)
{
    wordSpawnRange = other.wordSpawnRange;
    wordSpawnRate = other.wordSpawnRate;
    wordSpeed = other.wordSpeed;
}

var player = instance_create_depth(window_get_width()/2 - characterDistance, window_get_height() - 5, -15000, obj_battlePlayer);
var enemy = instance_create_depth(window_get_width()/2 + characterDistance, window_get_height() - 5, -15000, global.enemyBattleObject);
player.image_xscale = player.image_xscale*3;
enemy.image_xscale = enemy.image_xscale*3;
player.image_yscale = player.image_yscale*3;
enemy.image_yscale = enemy.image_yscale*3;

audio_play_sound(music_battle, 50, true)