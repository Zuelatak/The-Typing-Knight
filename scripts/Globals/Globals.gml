// Player
global.playerLocationX = 200;
global.playerLocationY = 100;
global.playerHealth = 100;
global.playerArmor = 0;
global.playerDamage = 100;
global.roomLocation = rm_village;
global.prevRoomLocation = rm_village;
global.playerDirection = spr_playerFS;

//Battle
global.enemyDamage = 5;
global.enemyArmor = 0;
global.enemyHealth = 100;
global.enemySprite = spr_knightFS;
global.wordList = 0;
global.wordPointer = 0;
global.wordCount = 0;

// file_text_open_read until you get a -1 and then save that as the next game file (For multiple save files)
// Check out file_exists ^