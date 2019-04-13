fade = true;
//while(fade) {show_debug_message("Fading")}
alphaRange = 1;

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