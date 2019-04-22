// Player
global.playerLocationX = 200;
global.playerLocationY = 100;
global.playerHealth = 100;
global.playerArmor = 0;
global.playerDamage = 5;
global.roomLocation = rm_village;
global.prevRoomLocation = rm_village;
global.playerDirection = spr_playerFS;

//Battle
global.enemyDamage = 5;
global.enemyArmor = 0;
global.enemyHealth = 100;
global.enemyBattleObject = obj_battleKnight;
global.enemyObject = obj_knight;
global.words = 0;
global.wordList = 0;
global.wordPointer = 0;
global.overallDifficulty = 5;
global.battleDifficulty = 0;
global.victory = false;

//Forest
global.forestEnemyPointer = 0;
global.forestEnemiesLoaded = false;
global.forestEnemies = 0;
global.forestEnemyList = 0;
global.forestLoadCurrent = false;
global.forestCurrentList = 0;

//Cave
global.caveEnemyPointer = 0;
global.caveEnemiesLoaded = false;
global.caveEnemies = 0;
global.caveEnemyList = 0;
global.caveLoadCurrent = false;
global.caveCurrentList = 0;

//Ruin
global.ruinEnemyPointer = 0;
global.ruinEnemiesLoaded = false;
global.ruinEnemies = 0;
global.ruinEnemyList = 0;
global.ruinLoadCurrent = false;
global.ruinCurrentList = 0;

//Mechanics
global.freeze = false;
// file_text_open_read until you get a -1 and then save that as the next game file (For multiple save files)
// Check out file_exists ^ 