file = file_text_open_read("\save.txt");
global.playerLocationX = real(file_text_read_string(file));
file_text_readln(file);
global.playerLocationY = real(file_text_read_string(file));
file_text_readln(file);
global.playerHealth = real(file_text_read_string(file));
file_text_readln(file);
global.playerArmor = real(file_text_read_string(file));
file_text_readln(file);
global.playerDamage = real(file_text_read_string(file));
file_text_readln(file);
global.roomLocation = real(file_text_read_string(file));
file_text_readln(file);
global.prevRoomLocation = real(file_text_read_string(file));
file_text_readln(file);
global.playerDirection = real(file_text_read_string(file));
file_text_close(file);
		
room_goto(global.roomLocation);
