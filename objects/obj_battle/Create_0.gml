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

var Spawner = instance_create_depth(room_width, wordSpawnerYAxis, wordSpawnerYAxis, obj_wordSpawner);

//var wordSpawnRang = wordSpawnRange;
//var wordSpawnRat = wordSpawnRate;
//var wordSpee = wordSpeed;

with(Spawner)
{
    wordSpawnRange = other.wordSpawnRange;
    wordSpawnRate = other.wordSpawnRate;
    wordSpeed = other.wordSpeed;
}