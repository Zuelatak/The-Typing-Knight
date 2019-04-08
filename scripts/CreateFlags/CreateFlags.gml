// Player Information

global.playerLocationX = 200;
global.playerLocationY = 100;
global.playerHealth = 100;
global.playerArmor = 0;
global.playerDamage = 100;
global.roomLocation = rm_firstMap;
global.prevRoomLocation = rm_firstMap;
global.playerDirection = spr_playerFS;

// file_text_open_read until you get a -1 and then save that as the next game file (For multiple save files)
// Check out file_exists ^