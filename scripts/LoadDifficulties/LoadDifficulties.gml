for(i = 1; i < 27; i++)
{
	file = file_text_open_read(string(i) + ".txt");
	j = 0;
	while (!file_text_eof(file))
	{
		global.difficulties[i-1, j] = file_text_read_string(file);
		file_text_readln(file);
		j++;
	}
	file_text_close(file);
} 

