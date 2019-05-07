file = file_text_open_read("Difficulties.txt");
for(i = 0; i < 27; i++)
{
	j = 0;
	while (!file_text_eof(file))
	{
		text = file_text_read_string(file);
		file_text_readln(file);
		if(text == "-")
		{
			break;	
		}
		global.difficulties[i, j] = text;
		j++;
	}
} 
file_text_close(file);

