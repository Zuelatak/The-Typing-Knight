global.enemyArmor = enemyArmor;
global.enemyDamage = enemyDamage;
global.enemyHealth = 100;

var Spawner = instance_create_depth(room_width, wordSpawnerYAxis, wordSpawnerYAxis, obj_wordSpawner);

var wordSpawnRang = wordSpawnRange;
var wordSpawnRat = wordSpawnRate;
var wordSpee = wordSpeed;

with(Spawner)
{
    wordSpawnRange = wordSpawnRang;
    wordSpawnRate = wordSpawnRat;
    wordSpeed = wordSpee;
}