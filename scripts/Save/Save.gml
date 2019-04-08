file = file_text_open_write("\save.txt");
file_text_write_string(file, global.playerLocationX);
file_text_writeln(file);
file_text_write_string(file, global.playerLocationY);
file_text_writeln(file);
file_text_write_string(file, global.playerHealth);
file_text_writeln(file);
file_text_write_string(file, global.playerArmor);
file_text_writeln(file);
file_text_write_string(file, global.playerDamage);
file_text_writeln(file);
file_text_write_string(file, global.roomLocation);
file_text_writeln(file);
file_text_write_string(file, global.prevRoomLocation);
file_text_writeln(file);
file_text_write_string(file, global.playerDirection);
file_text_close(file);

