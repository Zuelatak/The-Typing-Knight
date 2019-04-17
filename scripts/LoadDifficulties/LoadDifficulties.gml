for(i = 1; i < 8; i++)
{
	file = file_text_open_read(string(i) + ".txt");
	j = 0;
	while (!file_text_eof(file))
	{
		global.difficulties[i-1, j] = file_text_read_string(file);
		file_text_readln(file);
		show_debug_message(global.difficulties[i-1, j]);

		j++;
	}
}

